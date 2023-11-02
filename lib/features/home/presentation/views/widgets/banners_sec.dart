import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/features/home/presentation/views/widgets/banners_container.dart';
import '../../../../../constant.dart';

class BannersSec extends StatelessWidget {
  const BannersSec({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 152.h,
            width: double.infinity,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => const BannersContainer(),
              controller: controller,
            ),
          ),
          SizedBox(
            height: SizeConfig.height(context, 10),
          ),
          Align(
            alignment: Alignment.center,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: const Color(0xffD9D9D9),
                dotHeight: 7.w,
                dotWidth: 7.w,
                spacing: 4.w,
                activeDotColor: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
