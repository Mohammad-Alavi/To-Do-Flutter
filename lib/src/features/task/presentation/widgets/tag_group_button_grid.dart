import 'package:belbool_to_do/src/features/task/presentation/widgets/tag_group_button.dart';
import 'package:flutter/material.dart';

class TagGroupButtonGrid extends StatefulWidget {
  @override
  _TagGroupButtonGridState createState() => _TagGroupButtonGridState();
}

class _TagGroupButtonGridState extends State<TagGroupButtonGrid> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 6;
    final double itemWidth = size.width / 2;

    // TODO Change to GridView.builder
    return GridView.count(
      primary: false,
        childAspectRatio: (itemWidth / itemHeight),
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        TagGroupButton(title: 'All Tasks', count: '57'),
        TagGroupButton(title: 'Work', count: '13'),
        TagGroupButton(title: 'Home', count: '26'),
        TagGroupButton(title: 'School', count: '2'),
        TagGroupButton(title: 'Grocery List', count: '57'),
        TagGroupButton(title: 'Personal Errands', count: '19'),
        TagGroupButton(title: 'Daily works', count: '13'),
      ],
    );
  }
}
