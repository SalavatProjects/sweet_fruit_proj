import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';
import 'package:sweet_fruit_proj/ui_kit/widgets/back_btn.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
                padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackBtn(),
                      Text('Contact us', style: AppStyles.exoW500Text(24.sp),),
                      SizedBox(
                        width: 48.w,
                      )
                    ],
                  ),
                  SizedBox(height: 24.w,),
                  CupertinoButton(
                      onPressed: () {  },
                      padding: EdgeInsets.zero,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 52.w,
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                      color: AppColors.white
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/privacy_policy.svg'),
                        SizedBox(width: 12.w,),
                        Align(
                            alignment: Alignment(0, 0.4),
                            child: Text('Privacy Policy', style: AppStyles.exoW500Text(18.sp),))
                      ],
                    ),
                  )),
                  SizedBox(height: 8.w,),
                  CupertinoButton(
                      onPressed: () {  },
                      padding: EdgeInsets.zero,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 52.w,
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.06)),
                            color: AppColors.white
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/email.svg'),
                            SizedBox(width: 12.w,),
                            Align(
                                alignment: Alignment(0, 0.4),
                                child: Text('Contact us by e-mail', style: AppStyles.exoW500Text(18.sp),))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/foods.png'))
        ],
      ),
    );
  }
}
