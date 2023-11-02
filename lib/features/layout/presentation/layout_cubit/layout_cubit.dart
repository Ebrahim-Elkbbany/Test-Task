import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/features/home/presentation/views/home_view.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of<LayoutCubit>(context);
  int currentIndex =0;
  List<Widget> bottomScreens=const[
    HomeView(),
  ];
  void changeBottomNav (int index){
    currentIndex  = index;
    emit(BottomNav());
  }
}
