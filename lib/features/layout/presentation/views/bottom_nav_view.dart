import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/features/layout/presentation/layout_cubit/layout_cubit.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: SizedBox(
              child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNav(0);
                },
                items: const [
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.widgets_outlined),
                    label: 'Assets',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.support_agent),
                    label: 'Support',
                  ),
                  BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(Icons.person_outlined),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
