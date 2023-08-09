part of 'home_cubit.dart';

/// Single State of the HomeScreen
class HomeState {
  ///Value of this field contains state's data.
  final HomeStateData data;

  ///Const constructor for HomeState
  const HomeState(this.data);
}

/// Class containing data of the state
class HomeStateData {
  ///Value of this field indicates actual background color.
  final Color backgroundColor;

  ///Const constructor for HomeStateData
  const HomeStateData({this.backgroundColor = Colors.white});
}
