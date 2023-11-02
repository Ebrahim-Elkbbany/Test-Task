import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/core/utils/styles.dart';

class CustomRowServiceContainer extends StatelessWidget {
  const CustomRowServiceContainer({
    super.key,
    required this.onPressed,
    required this.name,
    required this.image,
  });

  final void Function() onPressed;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.w),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),


            offset: Offset(0, 2),
          ),
        ]
      ),
      width: double.infinity,
      height: 48.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 32.w,
              height: 32.h,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: SizeConfig.width(context, 8),
            ),
            Text(
              name,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_rounded,
              size: 22.w,
              color: const Color(0xff8C8C8C),
            ),
          ],
        ),
      ),
    );
  }
}
