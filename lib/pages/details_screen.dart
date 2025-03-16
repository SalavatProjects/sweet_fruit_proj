import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sweet_fruit_proj/bloc/archive_food_cubit.dart';
import 'package:sweet_fruit_proj/bloc/stat_food_cubit.dart';
import 'package:sweet_fruit_proj/pages/composition_screen.dart';
import 'package:sweet_fruit_proj/state/food_readed_state.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/back_btn.dart';
import 'package:sweet_fruit_proj/utils/constants.dart';
import 'package:collection/collection.dart';

import '../bloc/foods_cubit.dart';
import '../ui_kit/app_colors.dart';

class DetailsScreen extends StatefulWidget {
  String food;

  DetailsScreen({
    super.key,
    required this.food,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<FoodReadedState>().refreshData();
    context.read<FoodReadedState>().setFood(widget.food);
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent) {
      context.read<FoodReadedState>().setIsDetailsReaded(true);
      if (context.read<FoodsCubit>().state.statFoods.firstWhereOrNull((e) => e.name == widget.food) == null) {
        if (context.read<FoodReadedState>().getIsDetailsReaded && context.read<FoodReadedState>().getIsCompositionReaded) {
          context.read<FoodsCubit>().addStatFood(StatFoodState().copyWith(
            type: AppConstants.foodsByType.keys.firstWhereOrNull((k) => AppConstants.foodsByType[k]!.any(((e) => e == widget.food))),
            name: widget.food,
            origin: AppConstants.foodDescription[widget.food]!.$1,
          ));
        }
      }
    }
  }

  bool _startsWithVowel(String word) {
    if (word.isEmpty) return false;

    String firstLetter = word[0].toLowerCase();
    const vowels = {'a', 'e', 'i', 'o', 'u', 'y'};

    return vowels.contains(firstLetter);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> first4Keys = AppConstants.foodMainVitamins[widget.food]!.keys.take(4).toList();
    final List<Color> colors = [AppColors.blue, AppColors.red, AppColors.yellow, AppColors.green];
    double totalMg = 0;
    for (var key in first4Keys) {
      totalMg += AppConstants.foodMainVitamins[widget.food]![key]!;
    }
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.read<FoodReadedState>().refreshData();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackBtn(),
                    Text('Details', style: AppStyles.exoW500Text(24.sp),),
                      BlocSelector<FoodsCubit, FoodsState, List<ArchiveFoodState>>(
                      selector: (state) => state.archiveFoods,
              builder: (context, archiveFoods) {
                    ArchiveFoodState? archiveFood = archiveFoods.firstWhereOrNull((e) => e.name == widget.food);
                return CupertinoButton(
                padding: EdgeInsets.zero,
                child: Container(
                  width: 48.w,
                  height: 48.w,
                  decoration: archiveFood != null ? BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.04)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.primaryYellow, AppColors.primaryRed])
                  )
                        : BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.02))
                ),
                  child: Center(
                    child: SvgPicture.asset(archiveFood != null ? 'assets/icons/active.svg' : 'assets/icons/inactive.svg', width: 14.w,),
                  ),
                ),
                onPressed: () {
                  if (archiveFood != null ) {
                    context.read<FoodsCubit>().deleteArchiveFood(archiveFoods.firstWhere((e) => e.name == widget.food).id!);
                } else {
                    context.read<FoodsCubit>().addArchiveFood(ArchiveFoodState().copyWith(
                      name: widget.food,
                      origin: AppConstants.foodDescription[widget.food]!.$1,
                    ));
                  }
                }
            );
                },
              )
                  ],
                ),
                SizedBox(height: 16.w,),
                SizedBox(
                    height: 200.w,
                    child: Image.asset(AppConstants.foodsImage[widget.food]!)
                ),
                SizedBox(height: 24.w,),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                            color: AppColors.white
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${widget.food} Composition', style: AppStyles.exoW500Text(20.sp),),
                                  CupertinoButton(
                                      onPressed: () => Navigator.of(context).push(
                                        MaterialPageRoute(builder: (BuildContext context) => CompositionScreen(food: widget.food,))
                                      ),
                                      padding: EdgeInsets.zero,
                                  child: Container(
                                    width: 34.w,
                                    height: 34.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.02))
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset('assets/icons/expand.svg', width: 14.w,),
                                    ),
                                  ))
                                ],
                              ),
                              SizedBox(height: 8.w,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(4, (index) =>
                                  _FoodVitaminWidget(
                                      name: first4Keys[index],
                                      totalMg: totalMg,
                                      mg: AppConstants.foodMainVitamins[widget.food]![first4Keys[index]]!,
                                      color: colors[index])
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.w,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(12.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                            color: AppColors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${widget.food} Origin', style: AppStyles.interW500Text(20.sp),),
                              SizedBox(height: 16.w,),
                              Text(AppConstants.foodDescription[widget.food]!.$1, style: AppStyles.exoW400Text2(16.sp),),
                              SizedBox(height: 12.w,),
                              Text('Influence of environmental conditions:', style: AppStyles.interW500Text(20.sp),),
                              SizedBox(height: 16.w,),
                              Text(AppConstants.foodDescription[widget.food]!.$2, style: AppStyles.exoW400Text2(16.sp),),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.w,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(12.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                            color: AppColors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('How To Choose ${_startsWithVowel(widget.food) ? 'An' : 'A'} ${widget.food}?',
                                style: AppStyles.interW500Text(20.sp),
                              ),
                              SizedBox(height: 16.w,),
                              Text(AppConstants.foodDescription[widget.food]!.$3, style: AppStyles.exoW400Text2(16.sp),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FoodVitaminWidget extends StatelessWidget {
  String name;
  double totalMg;
  double mg;
  Color color;

  _FoodVitaminWidget({
    super.key,
    required this.name,
    required this.totalMg,
    required this.mg,
    required this.color
  });

  final double _width = 70.w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      child: Column(
        children: [
          Text(name, style: AppStyles.exoW500Text(18.sp),),
          SizedBox(height: 8.w,),
          Stack(
            children: [
              Container(
                width: _width,
                height: 6.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r),
                  color: color.withValues(alpha: 0.15)
                ),
              ),
              Container(
                width: _width * (mg / totalMg),
                height: 6.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.r),
                    color: color
                ),
              ),
            ],
          ),
          SizedBox(height: 4.w,),
          RichText(
              text: TextSpan(
                text: mg.toStringAsFixed(2),
                style: AppStyles.exoW600Text(14.sp),
                children: [
                  TextSpan(
                    text: ' mg',
                    style: AppStyles.exoW500Text2(12.sp)
                  )
                ]
              ))
        ],
      ),
    );
  }
}
