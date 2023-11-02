import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/assets.dart';
import 'package:test_task/core/utils/styles.dart';

class OrderSec extends StatelessWidget {
  const OrderSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
          child: Image.asset(
            AssetsData.emptyState,
            width: 250.w,
            height: 200.h,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          'No orders found',
          style: Styles.textStyle22,
        ),
        Text(
          'you can place your needed orders to let serve you.',
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w300,
            color: const Color(0xff707070),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
