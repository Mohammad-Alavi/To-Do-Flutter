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
    return DropdownButton<String>(
      value: widget.dropdownValue,
      icon: Icon(Icons.arrow_downward,
//          color: Colors.white
      ),
      iconSize: 16,
      elevation: 16,
//      style: TextStyle(color: Colors.white),

      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String newValue) {
          // TODO Implement DropDown onPress functionality
      },
      items: _itemList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
//            style: TextStyle(color: Colors.white),
//            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        );
      }).toList(),
    );
  }
}
