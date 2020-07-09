import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.assignment, size: 120, color: Theme.of(context).primaryColor,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Easy To-Do', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    );
  }
}
