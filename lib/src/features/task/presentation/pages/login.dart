import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double statusBarHeight = -MediaQuery.of(context).padding.top;
    double availableWidgetSpaceHeight = appHeight - statusBarHeight;
    double availableWidgetSpaceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: availableWidgetSpaceHeight,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Container(
              height: 310,
              color: Theme.of(context).primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.assignment,
                    size: 100,
                    color: Colors.white,
                  ),
                  Text(
                    'Easy To-Do',
                    textAlign: TextAlign.center,
                    style: (TextStyle(color: Colors.white, fontSize: 20)),
                  )
                ],
              ),
            ),
            Positioned(
              right: availableWidgetSpaceWidth * 0.05,
              left: availableWidgetSpaceWidth * 0.05,
              top: availableWidgetSpaceHeight / 2.65,
              child: Stack(
                overflow: Overflow.visible,
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Card(
                    child: Container(
                      height: 260,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context).primaryColor),
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'NAME',
                                    hintStyle: TextStyle(
                                        color: Theme.of(context).primaryColor)),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'EMAIL',
                                    hintStyle: TextStyle(
                                        color: Theme.of(context).primaryColor)),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'PASSWORD',
                                    hintStyle: TextStyle(
                                        color: Theme.of(context).primaryColor)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: -20,
                      child: RaisedButton(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.redAccent,
                          onPressed: () {})),
                  Positioned(
                    bottom: -70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Forgot Password?'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
