import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_task/features/home/presentation/views/widgets/categories_sec.dart';
import 'package:test_task/features/home/presentation/views/widgets/order_sec.dart';
import 'package:test_task/features/home/presentation/views/widgets/services_sec.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context){
    return BlocProvider.of(context);
  }
  List<String> tabBar=[
    "Categories",
    "Services",
    "Orders (0)",
  ];

  List<Widget> viewDisplayed=[
    const CategoriesSec(),
    const ServicesSec(),
    const OrderSec(),
  ];

  int tabBarIndex = 0;
  void changeTabBar(int index) {
    tabBarIndex = index;
    emit(ChangeTabBarState());
  }
}
