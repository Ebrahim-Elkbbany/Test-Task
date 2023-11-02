import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_task/core/utils/api_service.dart';
import 'package:test_task/features/home/data/models/users_model.dart';
import 'package:test_task/features/home/presentation/views/widgets/users_sec.dart';
import 'package:test_task/features/home/presentation/views/widgets/order_sec.dart';
import 'package:test_task/features/home/presentation/views/widgets/services_sec.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) {
    return BlocProvider.of(context);
  }

  List<String> tabBar = [
    "Users",
    "Services",
    "Orders (0)",
  ];

  List<Widget> viewDisplayed = [
    const UsersSec(),
    const ServicesSec(),
    const OrderSec(),
  ];

  int tabBarIndex = 0;

  void changeTabBar(int index) {
    tabBarIndex = index;
    emit(ChangeTabBarState());
  }

  List<UsersModel> usersList = [];

  Future<void> getUsers() async {
    emit(HomeUsersLoading());
    await ApiService().get().then((value) {
      usersList.clear();
      for (int i = 0; i < value.length; i++) {
        usersList.add(
          UsersModel.fromJson(value[i]),
        );
      }
      emit(HomeUsersSuccess());
    }).catchError(
      (e) {
        emit(
          HomeUsersFailure(),
        );
      },
    );
  }
}
