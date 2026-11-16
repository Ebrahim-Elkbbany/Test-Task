import 'package:flutter/material.dart';
import 'package:test_task/constant.dart';
import 'package:test_task/core/utils/styles.dart';
import 'package:test_task/core/widgets/custom_tab_bar.dart';
import 'package:test_task/features/home/presentation/views/widgets/tab_bar_sec.dart';

class FirstTabBar extends StatelessWidget {
  const FirstTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 4,
    //   child: Column(
    //     children: <Widget>[
    //       Container(
    //         margin: const EdgeInsets.all(15),
    //         height: 50.h,
    //         child: const
    //         TabBar(
    //           tabs: [
    //             Tab(
    //               text: ' Tab 1',
    //             ),
    //
    //             Tab(
    //               text: ' Tab 2',
    //             ),
    //             Tab(
    //               text: ' tap 3',
    //             ),
    //             Tab(
    //               text: ' tap 4',
    //             ),
    //           ],
    //
    //           dividerColor: Colors.white,
    //           indicator: BoxDecoration(),
    //         ),
    //       ),
    //        Expanded(
    //         child: TabBarView(
    //           children: [
    //             Text(
    //               'this is tab 1',
    //                style: Styles.textStyle20,
    //               textAlign: TextAlign.center,
    //             ),     Text(
    //               'this is tab 2',
    //                style: Styles.textStyle20,
    //               textAlign: TextAlign.center,
    //             ),     Text(
    //               'this is tab 3',
    //                style: Styles.textStyle20,
    //               textAlign: TextAlign.center,
    //             ),     Text(
    //               'this is tab 4',
    //                style: Styles.textStyle20,
    //               textAlign: TextAlign.center,
    //             ),
    //             // const TabBarSec(),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return CustomTabBar(
      tabs: const [
        'tab 1',
        'tab 2',
        'tab 3',
      ],

      children: [
        const TabBarSec(),
        Text(
          'this is tab 2',
          style: Styles.textStyle20,
          textAlign: TextAlign.center,
        ),
        const TabBarSec(),
        Text(
          'this is tab 3',
          style: Styles.textStyle20,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
