import 'package:flutter/material.dart';

class AddEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ساخت کار جدید'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
