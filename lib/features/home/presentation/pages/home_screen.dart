import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:solid_software_test_task/features/home/presentation/cubit/home_cubit.dart';

/// Home Screen class
class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: context.watch<HomeCubit>().state.data.backgroundColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _screenTapped(context),
        child: Center(
          child: Text(localization.helloThere),
        ),
      ),
    );
  }

  void _screenTapped(BuildContext context) {
    context.read<HomeCubit>().changeColor();
  }
}
