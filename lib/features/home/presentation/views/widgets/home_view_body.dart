import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/features/home/presentation/views/widgets/banners_sec.dart';
import 'package:test_task/features/home/presentation/views/widgets/tab_bar_sec.dart';
import 'package:test_task/features/home/presentation/views/widgets/text_sec.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.height(context, 12),
          ),
          const TextSec(),
          SizedBox(
            height: SizeConfig.height(context, 16),
          ),
          const BannersSec(),
          SizedBox(
            height: SizeConfig.height(context, 32),
          ),
          const TabBarSec(),
          SizedBox(
            height: SizeConfig.height(context, 16),
          ),
        ],
      ),
    );
  }
}
