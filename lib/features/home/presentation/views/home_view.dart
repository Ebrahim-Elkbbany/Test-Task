import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/features/home/presentation/views/widgets/home_view_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:  EdgeInsets.only(left: 20.w),
          child: const Icon(Icons.menu),
        ),
        title: const Text("Home"),
      ),
      body: const HomeViewBody(),
    );
  }
}
