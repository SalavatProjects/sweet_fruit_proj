import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweet_fruit_proj/bloc/foods_cubit.dart';
import 'package:sweet_fruit_proj/bloc/stat_food_cubit.dart';
import 'package:sweet_fruit_proj/state/food_readed_state.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/back_btn.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:sweet_fruit_proj/utils/constants.dart';

class CompositionScreen extends StatefulWidget {
  String food;

  CompositionScreen({
    super.key,
    required this.food,
  });

  @override
  State<CompositionScreen> createState() => _CompositionScreenState();
}

class _CompositionScreenState extends State<CompositionScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent) {
      context.read<FoodReadedState>().setIsCompositionReaded(true);
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

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  dynamic _customRound(double value) {
    int integerPart = value.truncate();

    if (integerPart.abs() >= 10) {
      return integerPart.round();
    } else {
      return double.parse(value.toStringAsFixed(2));
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalMg = 0;
    List<String> vitaminKeys = AppConstants.foodMainVitamins[widget.food]!.keys.toList();
    for (var key in vitaminKeys) {
      totalMg += AppConstants.foodMainVitamins[widget.food]![key]!;
    }
    final List<Color> colors = [AppColors.blue, AppColors.red, AppColors.yellow, AppColors.green, AppColors.cyan];
    final double totalNutritionsGr = AppConstants.foodNutrition[widget.food]!['protein']! + AppConstants.foodNutrition[widget.food]!['carbs']! + AppConstants.foodNutrition[widget.food]!['fat']!;
    final List<Color> nutritionColor = [AppColors.primaryRed, AppColors.green, AppColors.red];
    final List<String> nutritions = ['Protein', 'Carbs', 'Fat'];
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackBtn(),
                    Text('Сomposition', style: AppStyles.exoW500Text(24.sp),),
                    SizedBox(width: 48.w,),
                  ],
                ),
                SizedBox(height: 16.w,),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                            color: AppColors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 100.w,
                                child: Stack(
                                  children: [
                                    PieChart(
                                        PieChartData(
                                      sections: List.generate(
                                          5, (int index) =>
                                      PieChartSectionData(
                                        color: colors[index],
                                        value: AppConstants.foodMainVitamins[widget.food]![vitaminKeys[index]]! / totalMg,
                                        radius: 12.w,
                                        showTitle: false,
                                      )
                                      )
                                    )),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('100g', style: AppStyles.exoW500Text(24.sp),),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 6.w,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Vitamins', style: AppStyles.exoW500Text(20.sp),),
                                    SizedBox(height: 12.w,),
                                    Wrap(
                                      spacing: 4.w,
                                      runSpacing: 8.w,
                                      children: List.generate(5, (int index) =>
                                        SizedBox(
                                          width: 100.w,
                                          height: 24.w,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16.w,
                                                height: 16.w,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: colors[index]
                                                ),
                                              ),
                                              SizedBox(width: 4.w,),
                                              RichText(
                                                  text: TextSpan(
                                                    text: vitaminKeys[index],
                                                    style: AppStyles.exoW500Text(14.sp),
                                                    children: [
                                                      TextSpan(
                                                        text: ' (${_customRound(AppConstants.foodMainVitamins[widget.food]![vitaminKeys[index]]!)}mg)',
                                                        style: AppStyles.exoW500Text2(12.sp)
                                                      )
                                                    ]
                                                  ))
                                            ],
                                          ),
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                    SizedBox(height: 12.w,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                        color: AppColors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                text: 'Nutrition ',
                                style: AppStyles.exoW500Text(20.sp),
                                children: [
                                  TextSpan(
                                    text: '(${AppConstants.foodNutrition[widget.food]!['kcal']!.toInt()}kcal)',
                                    style: AppStyles.exoW500Text2(16.sp)
                                  )
                                ]
                              )),
                          SizedBox(height: 8.w,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(3, (int index) =>
                            _NutritionWidget(
                                name: nutritions[index],
                                gr: AppConstants.foodNutrition[widget.food]![nutritions[index].toLowerCase()]!,
                                totalGr: totalNutritionsGr,
                                color: nutritionColor[index])
                            ),
                          )
                        ],
                      ),
                    ),
                        SizedBox(height: 12.w,),
                        Container(
                          padding: EdgeInsets.all(12.w),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                            color: AppColors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Other', style: AppStyles.interW500Text(20.sp),),
                              SizedBox(height: 16.w,),
                              Text('Basic Composition:', style: AppStyles.exoW500Text(18.sp),),
                              ...List.generate(
                                  AppConstants.foodBasicComposition[widget.food]!.length,
                                  (int index) => Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4.w),
                                    child: Text(
                                        ' \u2022 ${AppConstants.foodBasicComposition[widget.food]![index]}',
                                      style: AppStyles.exoW400Text2(16.sp),
                                    ),
                                  )),
                              SizedBox(height: 12.w,),
                              Text('Vitamins: (and % of daily value)', style: AppStyles.exoW500Text(18.sp),),
                              ...List.generate(
                                  AppConstants.foodVitamins[widget.food]!.length,
                                      (int index) => Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4.w),
                                    child: Text(
                                      ' \u2022 ${AppConstants.foodVitamins[widget.food]![index]}',
                                      style: AppStyles.exoW400Text2(14.sp),
                                    ),
                                  )),
                              SizedBox(height: 12.w,),
                              Text('Minerals: (and % of daily value)', style: AppStyles.exoW500Text(18.sp),),
                              ...List.generate(
                                  AppConstants.foodMinerals[widget.food]!.length,
                                      (int index) => Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4.w),
                                    child: Text(
                                      ' \u2022 ${AppConstants.foodMinerals[widget.food]![index]}',
                                      style: AppStyles.exoW400Text2(16.sp),
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class _NutritionWidget extends StatelessWidget {
  String name;
  double gr;
  double totalGr;
  Color color;

  _NutritionWidget({
    super.key,
    required this.name,
    required this.gr,
    required this.totalGr,
    required this.color,
  });

  final double height = 60.w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.w,
      height: height,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 8.w,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: color.withValues(alpha: 0.15)
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 8.w,
                  height: height * (gr / totalGr),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: color,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 8.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.w,),
              Text('${gr}g', style: AppStyles.exoW500Text(20.sp),),
              SizedBox(height: 8.w,),
              Text(name, style: AppStyles.exoW500Text2(14.sp),)
            ],
          )
        ],
      ),
    );
  }
}
