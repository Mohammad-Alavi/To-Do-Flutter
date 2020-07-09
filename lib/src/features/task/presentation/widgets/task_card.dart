import 'package:belbool_to_do/src/features/task/presentation/widgets/drop_down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool _completed = false;
  String _dropdownValue = 'Ready';
  Color _secondaryColor = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 90,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        TaskStatusDropDown(dropdownValue: _dropdownValue),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: _buildCheckBox()),
                    ],
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(
                height: 60,
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Flexible(flex: 1, child: _buildTime()),
                    Flexible(flex: 1, child: _buildDate())
                  ],
                ),
              ),
            ),
//            Divider(
//              height: 15,
//              color: Colors.grey,
//            )
          ],
        ),
      ),
    );
  }

  ////////////////
  /// Components
  ///////////////

  Widget _buildCheckBox() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Buy pants',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Work',
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
              ],
            ),
          ),
          Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.green,
              value: _completed,
              onChanged: (bool value) {
                setState(() {
                  _completed = value;
                });
              }),
        ],
      ),
    );
  }

  Widget _buildDate() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Text(
        '16/10/1399',
        style: TextStyle(fontSize: 12, color: _secondaryColor),
      )
    ]);
  }

  Widget _buildTime() {
    return Row(
      children: <Widget>[
        Icon(Icons.access_time, color: _secondaryColor),
        Text(
          '10:12 PM',
          style: TextStyle(fontSize: 12, color: _secondaryColor),
        )
      ],
    );
  }
}
