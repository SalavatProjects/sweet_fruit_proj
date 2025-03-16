import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sweet_fruit_proj/pages/archive_page.dart';
import 'package:sweet_fruit_proj/pages/home_page.dart';
import 'package:sweet_fruit_proj/pages/stats_page.dart';
import 'package:sweet_fruit_proj/ui_kit/app_colors.dart';
import 'package:sweet_fruit_proj/ui_kit/app_styles.dart';
import 'package:sweet_fruit_proj/utils/constants.dart';

import '../state/food_readed_state.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentPage = 0;

  final List<Widget> _pages = [
    HomePage(),
    ArchivePage(),
    StatsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              SafeArea(child: _pages[_currentPage]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(24.w),
                  child: Container(
                    width: 277.w,
                    height: 66.w,
                    padding: EdgeInsets.all(6.w),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(33.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _BottomNavBarBtn(
                            text: 'Home',
                            imagePath: 'assets/icons/Home.svg',
                            isSelected: _currentPage == 0,
                            onPressed: () {
                              setState(() {
                                _currentPage = 0;
                              });
                            }),
                        _BottomNavBarBtn(
                            text: 'Archive',
                            imagePath: 'assets/icons/Archive.svg',
                            isSelected: _currentPage == 1,
                            onPressed: () {
                              setState(() {
                                _currentPage = 1;
                              });
                            }),
                        _BottomNavBarBtn(
                            text: 'Stats',
                            imagePath: 'assets/icons/stats.svg',
                            isSelected: _currentPage == 2,
                            onPressed: () {
                              setState(() {
                                _currentPage = 2;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class _BottomNavBarBtn extends StatelessWidget {
  String text;
  String imagePath;
  bool isSelected;
  void Function() onPressed;

  _BottomNavBarBtn({
    super.key,
    required this.text,
    required this.imagePath,
    this.isSelected = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: AnimatedContainer(
          duration: AppConstants.duration200,
          height: 54.w,
          decoration: isSelected ? BoxDecoration(
            borderRadius: BorderRadius.circular(27.r),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.primaryYellow,
              AppColors.primaryRed,
            ])
          ) : null,
          child: isSelected ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.w),
            child: Row(
              children: [
                SvgPicture.asset(imagePath, width: 20.w, colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),),
                SizedBox(width: 8.w,),
                Text(text, style: AppStyles.exoW500White(18.sp),)
              ],
            ),
          ) : Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SvgPicture.asset(imagePath, width: 20.w,),
          ),
        )
    );
  }
}
