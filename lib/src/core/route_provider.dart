import 'package:belbool_to_do/src/features/task/presentation/pages/add_edit.dart';
import 'package:belbool_to_do/src/features/task/presentation/pages/home.dart';
import 'package:belbool_to_do/src/features/task/presentation/pages/splash_screen.dart';
import 'package:belbool_to_do/src/features/task/presentation/pages/task_list.dart';
import 'package:flutter/material.dart';

class RoutesProvider {
  static const String ADD_EDIT_TASK_PAGE = "/add-edit-task";
  static const String TASK_LIST_PAGE = "/task-list";
  static const String HOME_PAGE = "/home";
  static const String SPLASH_SCREEN = "/splash-screen";

  static routes(context) {
    return {
      ADD_EDIT_TASK_PAGE: (BuildContext context) => AddEditPage(),
      TASK_LIST_PAGE: (BuildContext context) => TaskListPage(),
      HOME_PAGE: (BuildContext context) => HomePage(),
      SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
    };
  }
}
