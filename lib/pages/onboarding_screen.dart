import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweet_fruit_proj/pages/bottom_nav_bar_screen.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12.w),
            child: Column(
              children: [
                SizedBox(height: 24.w,),
                Stack(
                  children: [
                    Image.asset('assets/images/foods_onboarding.png'),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 140.w,
                            height: 140.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/Logo.png')),
                              borderRadius: BorderRadius.circular(28.r),
                              border: Border.all(width: 1, color: AppColors.text.withValues(alpha: 0.06))
                            ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 32.w,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.w),
                  child: Column(
                    children: [
                      Text('Welcome to Sweet Fruit!', style: AppStyles.interW600Text(24.sp),),
                      SizedBox(height: 16.w,),
                      Text('Explore our fruit & vegetable app! Get detailed info on nutrition, vitamins, and benefits. Search by name and discover usage tips.', 
                      style: AppStyles.interW400Text2(16.sp),
                      textAlign: TextAlign.center,),
                      SizedBox(height: 158.w,),
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) => BottomNavBarScreen())
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 52.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26.r),
                              gradient: LinearGradient(
                                  colors: [
                                AppColors.primaryYellow,
                                AppColors.primaryRed
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                              )
                            ),
                            child: Center(child: Text('Start studying', style: AppStyles.exoW600White(20.sp),)),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
