import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweet_fruit_proj/bloc/archive_food_cubit.dart';
import 'package:sweet_fruit_proj/bloc/foods_cubit.dart';
import 'package:sweet_fruit_proj/pages/details_screen.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/apple_season_widget.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/contact_us_btn.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/food_card.dart';
import 'package:sweet_fruit_proj/utils/constants.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saved', style: AppStyles.exoW500Text2(14.sp),),
                  SizedBox(height: 4.w,),
                  Text('Products', style: AppStyles.exoW500Text(32.sp),)
                ],
              ),
              ContactUsBtn()
            ],
          ),
          SizedBox(height: 16.w,),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppleSeasonWidget(),
                      SizedBox(height: 12.w,),
                      BlocSelector<FoodsCubit, FoodsState, List<ArchiveFoodState>>(
                        selector: (state) => state.archiveFoods,
                        builder: (context, archiveFoods) {
                          if (archiveFoods.isNotEmpty) {
                            return Wrap(
                              spacing: 8.w,
                              runSpacing: 8.w,
                              children: List.generate(
                                  archiveFoods.length, (int index) =>
                                  FoodCard(
                                      image: AppConstants
                                          .foodsImage[archiveFoods[index]
                                          .name]!,
                                      name: archiveFoods[index].name,
                                      origin: archiveFoods[index].origin,
                                      isArchive: true,
                                      archiveFunc: () {
                                        context.read<FoodsCubit>()
                                            .deleteArchiveFood(
                                            archiveFoods[index].id!);
                                      },
                                      openFunc: () =>
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (
                                                  BuildContext context) =>
                                                  DetailsScreen(
                                                      food: archiveFoods[index]
                                                          .name))
                                          ))),
                            );
                          } else {
                            return Padding(
                              padding: EdgeInsets.only(top: 24.w),
                              child: Text('No archive data yet!', style: AppStyles.exoW500Text2(16.sp),),
                            );
                          }
                        },
                      ),
                      SizedBox(height: 80.w,)
                    ],
                  )
              )
          )
        ],
      ),
    );
  }
}
