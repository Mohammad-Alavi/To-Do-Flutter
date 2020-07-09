import 'package:flutter/material.dart';

class TagGroupButton extends StatelessWidget {
  final String title;
  final String count;

  TagGroupButton({@required this.title, @required this.count});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO Implement onTap action
      },
      child: Container(
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(count, style: TextStyle(fontSize: 11, color: Colors.black45)),
                    SizedBox(width: 5),
                    Text('tasks', style: TextStyle(fontSize: 11, color: Colors.black45)),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
