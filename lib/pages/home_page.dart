import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sweet_fruit_proj/bloc/archive_food_cubit.dart';
import 'package:sweet_fruit_proj/bloc/foods_cubit.dart';
import 'package:sweet_fruit_proj/pages/details_screen.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/apple_season_widget.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/contact_us_btn.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/food_card.dart';
import 'package:sweet_fruit_proj/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchEditingController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _productType = 'fruit';

  List<String> _foods = [];

  @override
  void initState() {
    super.initState();
    _setFoods();
  }

  void _setFoods() {
    _foods.clear();
    _foods.addAll(AppConstants.foodsByType[_productType]!);
  }

  @override
  void dispose() {
    super.dispose();
    _searchEditingController.dispose();
    _scrollController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to', style: AppStyles.exoW500Text2(14.sp),),
                  SizedBox(height: 4.w,),
                  Text('Sweet Fruit!', style: AppStyles.exoW500Text(32.sp),)
                ],
              ),
              ContactUsBtn(),
            ],
          ),
          SizedBox(height: 16.w,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 54.w,
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.r),
              border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.1)),
            ),
            child: TextFormField(
              controller: _searchEditingController,
              decoration: InputDecoration(
                icon: SvgPicture.asset('assets/icons/search.svg'),
                hintText: 'Search',
                hintStyle: AppStyles.exoW500Text(16.sp),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
              onChanged: (value) {
                setState(() {
                  _foods = _foods.where((e) => e.toLowerCase().startsWith(value)).toList();
                  if (value.isEmpty) {
                    _setFoods();
                  }
                });
              },
            ),
          ),
          SizedBox(height: 8.w,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _FoodBtn(
                  text: 'Fruits',
                  imagePath: 'assets/images/fruits.png',
                  onPressed: () {
                    setState(() {
                      _productType = 'fruit';
                      _setFoods();
                      _searchEditingController.clear();
                    });
                    _scrollController.jumpTo(0);
                  },
                  isSelected: _productType == 'fruit',
              ),
              _FoodBtn(
                text: 'Vegetables',
                imagePath: 'assets/images/vegetables.png',
                onPressed: () {
                  setState(() {
                    _productType = 'vegetable';
                    _setFoods();
                    _searchEditingController.clear();
                  });
                  _scrollController.jumpTo(0);
                },
                isSelected: _productType == 'vegetable',
              ),
              _FoodBtn(
                text: 'Berries',
                imagePath: 'assets/images/berries.png',
                onPressed: () {
                  setState(() {
                    _productType = 'berry';
                    _setFoods();
                    _searchEditingController.clear();
                  });
                  _scrollController.jumpTo(0);
                },
                isSelected: _productType == 'berry',
              ),
            ],
          ),
          SizedBox(height: 16.w,),
          Text('Advice:', style: AppStyles.quicksandW600Text(22.sp),),
          SizedBox(height: 8.w,),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  AppleSeasonWidget(),
                  SizedBox(height: 12.w,),
                  BlocSelector<FoodsCubit, FoodsState, List<ArchiveFoodState>>(
                  selector: (state) => state.archiveFoods,
                  builder: (context, archiveFoods) {
                    return Wrap(
                    spacing: 8.w,
                    runSpacing: 8.w,
                    children: List.generate(
                        _foods.length, (int index) =>
                      FoodCard(
                          image: AppConstants.foodsImage[_foods[index]]!,
                          name: _foods[index],
                          origin: AppConstants.foodDescription[_foods[index]]!.$1,
                          isArchive: archiveFoods.any((e) => e.name == _foods[index]),
                          archiveFunc: () {
                            if (archiveFoods.any((e) => e.name == _foods[index])) {
                              context.read<FoodsCubit>().deleteArchiveFood(archiveFoods.firstWhere((e) => e.name == _foods[index]).id!);
                            } else {
                              context.read<FoodsCubit>().addArchiveFood(
                                  ArchiveFoodState().copyWith(
                                    name: _foods[index],
                                    origin: AppConstants.foodDescription[_foods[index]]!.$1
                                  )
                              );
                            }
                          },
                          openFunc: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) => DetailsScreen(food: _foods[index]))
                          ))
                    ),
                  );
                    },
                  ),
                  SizedBox(height: 80.w,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FoodBtn extends StatelessWidget {
  String text;
  String imagePath;
  bool isSelected;
  void Function() onPressed;
  _FoodBtn({
    super.key,
    required this.text,
    required this.imagePath,
    this.isSelected = false,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        width: MediaQuery.of(context).size.width / 3 - 16.w,
        height: 110.w,
        padding: EdgeInsets.all(8.w),
        decoration: isSelected ? BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.white,
          border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.04))
        ) : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imagePath, height: 60.w, fit: BoxFit.fitWidth,),
            Text(text, style: isSelected ? AppStyles.exoW500Text(16.sp) : AppStyles.exoW500Text2(16.sp),)
          ],
        ),
      ),
    );
  }
}
