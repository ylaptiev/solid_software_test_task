import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solid_software_test_task/features/home/presentation/pages/home_screen.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(
      page: HomeScreen,
      initial: true,
    ),
  ],
)

///Blob class
class AppRouter extends _$AppRouter {}
