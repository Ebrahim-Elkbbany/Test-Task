import 'package:flutter/material.dart';
import 'package:test_task/constant.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,

    required this.tabs,
    required this.children,
  }) : super(key: key);


  final List<String> tabs;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xffFFF5F5),
              borderRadius: BorderRadius.circular(10.0),
            ),

            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              padding: const EdgeInsets.all(10),
              tabs: [

                for( var i= 0; i<tabs.length;i++)
                  Tab(text:tabs [i])

              ],
              dividerColor: Color(0xffFFF5F5),
              labelColor: Colors.white,
              indicator: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(8)),
              ),

            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                for( var i= 0; i<children.length;i++)
                 children[i]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
