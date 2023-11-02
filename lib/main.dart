import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/theme.dart';
import 'package:test_task/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:test_task/features/layout/presentation/views/bottom_nav_view.dart';

void main() {
  runApp(const TestTask());
}

class TestTask extends StatelessWidget {
  const TestTask({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: ScreenUtilInit(

        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            home: child,
          );
        },
        child: const LayoutView(),
      ),
    );
  }
}

