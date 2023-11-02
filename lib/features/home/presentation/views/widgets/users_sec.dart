import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/resposive_size_config.dart';
import 'package:test_task/core/utils/styles.dart';
import 'package:test_task/core/widgets/custom_row_service_container.dart';
import 'package:test_task/core/widgets/custom_text_button.dart';
import 'package:test_task/features/home/presentation/manager/home_cubit/home_cubit.dart';


class UsersSec extends StatelessWidget {
  const UsersSec({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit =HomeCubit.get(context);
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
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CustomRowServiceContainer(
              onPressed: () {},
              name: cubit.usersList[index].name,
              id: cubit.usersList[index].id,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: SizeConfig.height(context, 16),
            );
          },
          itemCount: cubit.usersList.length,
        ),
      ],
    );
  }
}
