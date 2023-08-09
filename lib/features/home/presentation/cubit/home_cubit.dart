import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:solid_software_test_task/core/utils/color_generator.dart';

part 'home_state.dart';

/// State manger for HomeScreen
class HomeCubit extends Cubit<HomeState> {
  ///Constructor of Home Cubit
  HomeCubit() : super(const HomeState(HomeStateData()));

  ///Generates random color, puts it in state, emits new state
  void changeColor() {
    final newColor = ColorGenerator.getRandomColor();

    emit(HomeState(HomeStateData(backgroundColor: newColor)));
  }
}
