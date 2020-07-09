import 'package:belbool_to_do/fake-task_model.dart';
import 'package:belbool_to_do/src/core/task_state.dart';
import 'package:belbool_to_do/src/features/task/presentation/widgets/task_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<FakeTask> _fakeTaskList = [
    FakeTask(
        title: 'test',
        dueDate: '16/10/1368',
        status: TaskState.Canceled,
        description: [],
        tag: 'work'),
    FakeTask(
        title: 'test',
        dueDate: '16/10/1368',
        status: TaskState.Ready,
        description: [],
        tag: 'work'),
    FakeTask(
        title: 'test',
        dueDate: '16/10/1368',
        status: TaskState.Doing,
        description: [],
        tag: 'work'),
    FakeTask(
        title: 'test',
        dueDate: '16/10/1368',
        status: TaskState.Done,
        description: [],
        tag: 'work'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black12),
      // TODO Change to ListView.builder
      child: ListView(
        children: <Widget>[
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard(),
        ],
      ),
    );
  }
}
