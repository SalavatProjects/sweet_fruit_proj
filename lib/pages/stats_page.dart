import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweet_fruit_proj/bloc/archive_food_cubit.dart';
import 'package:sweet_fruit_proj/bloc/stat_food_cubit.dart';
import 'package:sweet_fruit_proj/pages/details_screen.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/contact_us_btn.dart';
import 'package:collection/collection.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/food_card.dart';
import 'package:sweet_fruit_proj/utils/constants.dart';

import '../bloc/foods_cubit.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Statistics', style: AppStyles.exoW500Text(32.sp),),
              ContactUsBtn()
            ],
          ),
          SizedBox(height: 16.w,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Studied', style: AppStyles.exoW600Text(24.sp),),
              BlocSelector<FoodsCubit, FoodsState, List<StatFoodState>>(
                selector: (state) => state.statFoods,
                builder: (context, statFoods) {
                  return RichText(
                      text: TextSpan(
                          text: statFoods.length.toString(),
                          style: AppStyles.exoW600Text(24.sp),
                          children: [
                            TextSpan(
                                text: ' products',
                                style: AppStyles.exoW600Text(16.sp).copyWith(
                                    color: AppColors.text2)
                            )
                          ]
                      ));
                },
              )
            ],
          ),
          SizedBox(height: 16.w,),
          BlocBuilder<FoodsCubit, FoodsState>(
            builder: (context, state) {
              final List<StatFoodState> fruits = state.statFoods.where((e) => e.type == 'fruit').toList();
              final List<StatFoodState> vegetables = state.statFoods.where((e) => e.type == 'vegetable').toList();
              final List<StatFoodState> berries = state.statFoods.where((e) => e.type == 'berry').toList();
              if (state.statFoods.isNotEmpty) {
              return Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                        children: [
                          if (fruits.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                      text: 'Fruits ',
                                      style: AppStyles.exoW500Text(20.sp),
                                      children: [
                                        TextSpan(
                                          text: '(${fruits.length})',
                                          style: AppStyles.exoW500Text2(16.sp)
                                        )
                                      ]
                                    )),
                                SizedBox(height: 8.w,),
                                Wrap(
                                  spacing: 8.w,
                                  runSpacing: 8.w,
                                  children: List.generate(
                                      fruits.length, (int index) =>
                                    FoodCard(
                                        image: AppConstants.foodsImage[fruits[index].name]!,
                                        name: fruits[index].name,
                                        origin: fruits[index].origin,
                                        isArchive: state.archiveFoods.any((e) => e.name == fruits[index].name),
                                        archiveFunc: () {
                                          if (state.archiveFoods.any((e) => e.name == fruits[index].name)) {
                                            context.read<FoodsCubit>().deleteArchiveFood(state.archiveFoods.firstWhere((e) => e.name == fruits[index].name).id!);
                                          } else {
                                            context.read<FoodsCubit>().addArchiveFood(
                                                ArchiveFoodState().copyWith(
                                                  name: fruits[index].name,
                                                  origin: fruits[index].origin
                                                ));
                                          }
                                        },
                                        openFunc: () => Navigator.of(context).push(
                                          MaterialPageRoute(builder: (BuildContext context) => DetailsScreen(food: fruits[index].name))
                                        ),
                                    )
                                  ),
                                ),
                                SizedBox(height: 12.w,)
                              ],
                            ),
                          if (vegetables.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Vegetables ',
                                        style: AppStyles.exoW500Text(20.sp),
                                        children: [
                                          TextSpan(
                                              text: '(${vegetables.length})',
                                              style: AppStyles.exoW500Text2(16.sp)
                                          )
                                        ]
                                    )),
                                SizedBox(height: 8.w,),
                                Wrap(
                                  spacing: 8.w,
                                  runSpacing: 8.w,
                                  children: List.generate(
                                      vegetables.length, (int index) =>
                                      FoodCard(
                                        image: AppConstants.foodsImage[vegetables[index].name]!,
                                        name: vegetables[index].name,
                                        origin: vegetables[index].origin,
                                        isArchive: state.archiveFoods.any((e) => e.name == vegetables[index].name),
                                        archiveFunc: () {
                                          if (state.archiveFoods.any((e) => e.name == vegetables[index].name)) {
                                            context.read<FoodsCubit>().deleteArchiveFood(state.archiveFoods.firstWhere((e) => e.name == vegetables[index].name).id!);
                                          } else {
                                            context.read<FoodsCubit>().addArchiveFood(
                                                ArchiveFoodState().copyWith(
                                                    name: vegetables[index].name,
                                                    origin: vegetables[index].origin
                                                ));
                                          }
                                        },
                                        openFunc: () => Navigator.of(context).push(
                                            MaterialPageRoute(builder: (BuildContext context) => DetailsScreen(food: vegetables[index].name))
                                        ),
                                      )
                                  ),
                                ),
                                SizedBox(height: 12.w,)
                              ],
                            ),
                          if (berries.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Berries ',
                                        style: AppStyles.exoW500Text(20.sp),
                                        children: [
                                          TextSpan(
                                              text: '(${berries.length})',
                                              style: AppStyles.exoW500Text2(16.sp)
                                          )
                                        ]
                                    )),
                                SizedBox(height: 8.w,),
                                Wrap(
                                  spacing: 8.w,
                                  runSpacing: 8.w,
                                  children: List.generate(
                                      berries.length, (int index) =>
                                      FoodCard(
                                        image: AppConstants.foodsImage[berries[index].name]!,
                                        name: berries[index].name,
                                        origin: berries[index].origin,
                                        isArchive: state.archiveFoods.any((e) => e.name == berries[index].name),
                                        archiveFunc: () {
                                          if (state.archiveFoods.any((e) => e.name == berries[index].name)) {
                                            context.read<FoodsCubit>().deleteArchiveFood(state.archiveFoods.firstWhere((e) => e.name == vegetables[index].name).id!);
                                          } else {
                                            context.read<FoodsCubit>().addArchiveFood(
                                                ArchiveFoodState().copyWith(
                                                    name: berries[index].name,
                                                    origin: berries[index].origin
                                                ));
                                          }
                                        },
                                        openFunc: () => Navigator.of(context).push(
                                            MaterialPageRoute(builder: (BuildContext context) => DetailsScreen(food: berries[index].name))
                                        ),
                                      )
                                  ),
                                ),
                                SizedBox(height: 12.w,)
                              ],
                            ),
                          SizedBox(height: 80.w,)
                        ],
                      )));
              } else {
                return Padding(
                  padding: EdgeInsets.only(top: 24.w),
                  child: Text('No stats data yet!', style: AppStyles.exoW500Text2(16.sp),),
                );
              }

            },
          )
        ],
      ),
    );
  }
}
