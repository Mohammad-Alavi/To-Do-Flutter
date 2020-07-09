import 'package:belbool_to_do/src/core/task_state.dart';
import 'package:belbool_to_do/src/features/task/presentation/widgets/task_list.dart';
import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  @override
  _TaskListPageState createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  bool _typing = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TaskState.values.length,
      child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: TaskState.Ready.toString().split('.')[1]),
                  Tab(text: TaskState.Doing.toString().split('.')[1]),
                  Tab(text: TaskState.Done.toString().split('.')[1]),
                  Tab(text: TaskState.Canceled.toString().split('.')[1]),
                ],
                isScrollable: true,
              ),
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              centerTitle: true,
              title: _buildAppBarTitle(),
              actions: <Widget>[
                IconButton(
                  icon: Icon(_typing ? Icons.done : Icons.search),
                  onPressed: () {
                    setState(() {
                      _typing = !_typing;
                    });
                  },
                ),
              ]),
          body: TabBarView(children: <Widget>[
            TaskList(),
            Container(
                child: Tab(
              text: TaskState.values[TaskState.Ready.index].toString(),
              icon: Icon(Icons.markunread),
            )),
            Container(
                child: Tab(
              text: TaskState.values[TaskState.Ready.index].toString(),
              icon: Icon(Icons.markunread),
            )),
            Container(
                child: Tab(
              text: TaskState.values[TaskState.Ready.index].toString(),
              icon: Icon(Icons.markunread),
            )),
          ])),
    );
  }

  Widget _buildAppBarTitle() {
    if (_typing) {
      return TextField(
        decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )),
      );
    } else
      return Text('Work');
  }
}
