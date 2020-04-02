import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

//Now that we have a stateless widget(it could also be a stateful widget)
//we can use the Hot Reload tool.
class MyApp extends StatelessWidget {
  @override
  //The build() method is called whenever we build a new version of this
  //widget (the MyApp widget).
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        //The Container() widget is used to position and resize other
        //widget inside of it. This Container() widget works like a
        // <div> </div> from HTML. And it only supports one child widget
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.teal,
                    width: 210.0,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(55.0, 220.0, 55.0, 0.0),
                      height: 100.0,
                      width: 100.0,
                      color: Colors.yellow,
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    height: 100.0,
                    width: 100.0,
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                width: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
