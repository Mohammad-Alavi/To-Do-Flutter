import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskStatusDropDown extends StatefulWidget {
  final String dropdownValue;

  TaskStatusDropDown({@required this.dropdownValue});

  @override
  _TaskStatusDropDownState createState() => _TaskStatusDropDownState();
}

class _TaskStatusDropDownState extends State<TaskStatusDropDown> {
  final List<String> _itemList = ['Ready', 'Done', 'Canceled', 'Doing'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
      child: DropdownButton<String>(
        value: widget.dropdownValue,
        icon: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.white))),
          child: Icon(
            Icons.arrow_downward,
            color: Colors.white,
//          color: Colors.white
          ),
        ),
        iconSize: 18,
        elevation: 16,
        style: TextStyle(color: Colors.white),
        dropdownColor: Theme.of(context).primaryColor,
        underline: Container(
          height: 0,
          color: Colors.white,
        ),
        onChanged: (String newValue) {
          // TODO Implement DropDown onPress functionality
        },
        items: _itemList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                value,
//            style: TextStyle(color: Colors.white),
//            style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
