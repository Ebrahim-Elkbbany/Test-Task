import 'package:flutter/material.dart';
import 'package:test_task/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/core/utils/styles.dart';

class TextSec extends StatelessWidget {
  const TextSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AssetsData.hey,
                width: 28.w,
                height: 28.w,
                fit: BoxFit.fill,
              ),
              Text(
                ' Hey, Ahmed ',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.asset(
                AssetsData.hey2,
                width: 20.w,
                height: 20.w,
                fit: BoxFit.fill,
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.height(context, 24),
          ),
          Text(
            'Multi-Services for Your Real Estate Needs',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: SizeConfig.height(context, 4),
          ),
          Text(
            'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w300,
              color: const Color(0xff707070),
            ),
          ),
        ],
      ),
    );
  }
}
