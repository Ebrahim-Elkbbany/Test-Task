import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/constant.dart';
import 'package:test_task/core/utils/styles.dart';

ThemeData lightTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(size: 24.w),
    unselectedIconTheme: IconThemeData(size: 24.w),
    selectedLabelStyle: Styles.textStyle15.copyWith(color: kPrimaryColor),
    unselectedLabelStyle: Styles.textStyle15.copyWith(
      color: const Color(0xffC4C4C4),
    ),
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: kPrimaryColor,
    elevation: 0,
    unselectedItemColor: const Color(0xffC4C4C4),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: Styles.textStyle20.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.black, size: 24.w),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 60.h,
  ),
  iconTheme: IconThemeData(size: 24.w),
  scaffoldBackgroundColor: const Color(0xffFAFAFA),
  fontFamily: kOutfit,
);
