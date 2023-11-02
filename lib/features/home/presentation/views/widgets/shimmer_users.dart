import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/core/utils/styles.dart';
import 'package:test_task/core/widgets/custom_text_button.dart';

class UsersContainerShimmer extends StatelessWidget {
  const UsersContainerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            children: [
              Text(
                "Users View",
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              CustomTextButton(
                text: "see all",
                textStyle: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.underline,
                  color: const Color(0xff8C8C8C),
                ),
              ),
            ],
          ),
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 48.h,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: SizeConfig.height(context, 16),
            );
          },
          itemCount: 4,
        ),
      ],
    );
  }
}
