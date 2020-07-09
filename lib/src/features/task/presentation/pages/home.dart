import 'package:belbool_to_do/src/features/task/presentation/widgets/tag_group_button_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  EdgeInsets _pagePadding = const EdgeInsets.all(30.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildHeading(),
          _buildNavigationBar(),
          Expanded(child: TagGroupButtonGrid()),
        ],
      ),
      floatingActionButton: _buildAddTaskFab(),
    );
  }

  Widget _buildAddTaskFab() {
    return FloatingActionButton(
      onPressed: () {
        // TODO Implement onPress action
      },
      child: Icon(
        Icons.add,
        size: 36,
      ),
    );
  }

  Widget _buildNavigationBar() {
    return Container(
      height: 100,
      color: Theme.of(context).primaryColor.withRed(135),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavigationButton('57', 'Created', () {
            // TODO Implement onPress action
          }),
          _buildNavigationButton('35', 'Completed', () {
            // TODO Implement onPress action
          })
        ],
      ),
    );
  }

  Widget _buildHeading() {
    return Container(
      height: 250,
      color: Theme.of(context).primaryColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: _pagePadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  Text(
                    'Mohammad',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  Text(
                    'Monday, 12 November',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationButton(String count, String title, Function onTap) {
    return Flexible(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(count, style: TextStyle(color: Colors.white70)),
                  Text('', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: TextStyle(color: Colors.white70)),
                  Text('Tasks', style: TextStyle(color: Colors.white70)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
