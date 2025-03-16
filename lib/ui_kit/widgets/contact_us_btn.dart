import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sweet_fruit_proj/pages/contact_us_screen.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';

class ContactUsBtn extends StatelessWidget {
  const ContactUsBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
        child: Container(
          width: 48.w,
          height: 48.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: AppColors.black.withValues(alpha: 0.04)),
            color: AppColors.white
          ),
          child: Center(
            child: SvgPicture.asset('assets/icons/message.svg', width: 20.w,),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => ContactUsScreen())
          );
        });
  }
}
