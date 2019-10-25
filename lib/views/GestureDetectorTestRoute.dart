import 'ScaffoldBody.dart';

import 'package:flutter/material.dart';

class GestureDetectorTestRoute extends StatefulWidget {
  GestureDetectorTestRoute({Key key}) : super(key: key);

  @override
  _GestureDetectorTestRouteState createState() =>
      _GestureDetectorTestRouteState();
}

class _GestureDetectorTestRouteState extends State<GestureDetectorTestRoute> {
  String _operation = "No Gesture  detected!";

  @override
  Widget build(BuildContext context) {
    return Body(
      title: '手势检测（点击，长按，双击）',
      child: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 200.0,
            height: 100.0,
            child: Text(
              _operation,
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () => updateText('Tap'), //点击
          onDoubleTap: () => updateText('Doubletap'), //双击
          onLongPress: () => updateText('LongPress'), //长按
        ),
      ),
    );
  }

  void updateText(String text) {
    setState(() {
      _operation = text;
    });
  }
}
