import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';

class FoodCard extends StatelessWidget {
  String image;
  String name;
  String origin;
  bool isArchive;
  void Function() archiveFunc;
  void Function() openFunc;

  FoodCard({
    super.key,
    required this.image,
    required this.name,
    required this.origin,
    this.isArchive = false,
    required this.archiveFunc,
    required this.openFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 24.w,
      height: 180.w,
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.04)),
        color: AppColors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100.w,
            child: Stack(
              children: [
                CupertinoButton(
                    onPressed: archiveFunc,
                    padding: EdgeInsets.zero,
                    child: Container(
                      width: 34.w,
                      height: 34.w,
                      decoration: isArchive ? BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.02)),
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
                        child: SvgPicture.asset(isArchive ? 'assets/icons/active.svg' : 'assets/icons/inactive.svg'),
                      ),
                    )),
                Align(
                    alignment: Alignment(0,1),
                    child: Image.asset(image, width: 90.w, height: 90.w,)),
                Align(
                  alignment: Alignment.topRight,
                  child: CupertinoButton(
                    onPressed: openFunc,
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
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.w,),
          Text(name, style: AppStyles.exoW500Text(16.sp),),
          SizedBox(height: 8.w,),
          Text(
            origin,
            style: AppStyles.exoW400Text2(14.sp),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
