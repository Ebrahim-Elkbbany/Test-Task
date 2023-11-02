import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/constant.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:test_task/features/home/presentation/views/widgets/tab_bar_container.dart';

class TabBarSec extends StatelessWidget {
  const TabBarSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.w),
                    border: Border.all(
                      color: const Color(0xffF2F2F2),
                      width: 1.w,
                    ),
                  ),
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => TabBarContainer(
                      onTap: () {
                        cubit.changeTabBar(index);
                      },
                      name: cubit.tabBar[index],
                      color: cubit.tabBarIndex == index
                          ? kPrimaryColor
                          : const Color(0xffFAFAFA),
                      fontColor: cubit.tabBarIndex == index
                          ? Colors.white
                          : Colors.black,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: SizeConfig.width(context, 6),
                    ),
                    itemCount: cubit.tabBar.length,
                  ),
                ),
                cubit.viewDisplayed[cubit.tabBarIndex],
              ],
            ),
          ),
        );
      },
    );
  }
}
