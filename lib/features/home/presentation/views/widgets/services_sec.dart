import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/styles.dart';

class ServicesSec extends StatelessWidget {
  const ServicesSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 80.h),
      child: Column(
        children: [
          Text("No services now",style: Styles.textStyle22,),
          Text("we will try to add it later.",  style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w300,
            color: const Color(0xff707070),
          ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
