import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/constant.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/core/widgets/custom_error_widget.dart';
import 'package:test_task/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:test_task/features/home/presentation/views/widgets/shimmer_users.dart';
import 'package:test_task/features/home/presentation/views/widgets/tab_bar_container.dart';

class TabBarSec extends StatelessWidget {
  const TabBarSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
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
                        cubit.getUsers();
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
                if (state is HomeUsersLoading && cubit.tabBarIndex ==0 )
                  const UsersContainerShimmer(),
                if (state is HomeUsersSuccess || cubit.tabBarIndex !=0 )
                  cubit.viewDisplayed[cubit.tabBarIndex],
                if(state is HomeUsersFailure && cubit.tabBarIndex ==0 )
                  const CustomErrorWidget(errorMessage: "Failed to load data. Please try again."),
              ],
            ),
          ),
        );
      },
    );
  }
}
