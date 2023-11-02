import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/assets.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/core/utils/styles.dart';
import 'package:test_task/core/widgets/custom_button.dart';

class BannersContainer extends StatelessWidget {
  const BannersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 152.h,
      decoration: BoxDecoration(
        color: const Color(0xffFFF5F5),
        borderRadius: BorderRadius.circular(8.w),
      ),
      padding: EdgeInsets.only(left: 8.w),
      child: Row(
        children: [
          SizedBox(
            width: SizeConfig.width(context, 167),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Multi-Services for Your Real Estate Needs",
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomButton(
                  buttonName: "Order",
                  height: 32.h,
                  width: 128.w,
                )
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            AssetsData.banner,
            height: 144.h,
            width: 144.w,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
