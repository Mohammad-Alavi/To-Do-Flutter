import 'package:belbool_to_do/src/features/task/presentation/pages/add_edit.dart';
import 'package:belbool_to_do/src/features/task/presentation/pages/task_list.dart';
import 'package:flutter/material.dart';

class RoutesProvider {
  static const String ADD_EDIT_TASK_PAGE = "/add-edit-task";
  static const String TASK_LIST_PAGE = "/task-list";

  static routes(context) {
    return {
      ADD_EDIT_TASK_PAGE: (BuildContext context) => AddEditPage(),
      TASK_LIST_PAGE: (BuildContext context) => TaskListPage(),
    };
  }
}
