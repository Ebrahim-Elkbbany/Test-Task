import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/styles.dart';

class TabBarContainer extends StatelessWidget {
  const TabBarContainer({
    Key? key,
    required this.name,
    required this.onTap,
    required this.color,
    required this.fontColor,
  }) : super(key: key);
  final String name;
  final void Function() onTap;
  final Color color;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.h,
        width: 96.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.w),
        ),
        child: Text(
          name,
          style: Styles.textStyle14.copyWith(
            color: fontColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
