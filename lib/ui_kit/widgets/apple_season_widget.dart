import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';
import '../app_styles.dart';

class AppleSeasonWidget extends StatelessWidget {
  const AppleSeasonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
          color: AppColors.white
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 150.w,
                  child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) => LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.primaryYellow, AppColors.primaryRed]).createShader(bounds),
                      child: Text('It\'s Apple Season!', style: AppStyles.exoW600Text(24.sp),
                      ))
              ),
              SizedBox(
                width: 210.w,
                child: Text('Enjoy juicy, fresh apples packed with vitamins and fiber.',
                  style: AppStyles.exoW400Text2(14.sp),
                ),
              )
            ],
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                  'assets/images/apple_big.png'
              ))
        ],
      ),
    );
  }
}
