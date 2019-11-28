import 'ScaffoldBody.dart';
import 'package:flutter/material.dart';
import 'GradientButton.dart';

class GradientButtonRoute extends StatefulWidget {
  GradientButtonRoute({Key key}) : super(key: key);

  @override
  _GradientButtonRouteState createState() => _GradientButtonRouteState();
}

class _GradientButtonRouteState extends State<GradientButtonRoute> {
  @override
  Widget build(BuildContext context) {
    return Body(
      title: '自定义渐变button',
      child: Container(
        child: Column(
          children: <Widget>[
            GradientButton(
              colors: [Colors.orange, Colors.red],
              height: 50,
              child: Text("Submit"),
              onPressed: onTap,
            ),
            GradientButton(
              height: 50.0,
              colors: [Colors.lightGreen, Colors.green[700]],
              child: Text("Submit"),
              onPressed: onTap,
            ),
            GradientButton(
              height: 50.0,
              colors: [Colors.lightBlue[300], Colors.blueAccent],
              child: Text("Submit"),
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }

  onTap() {
    print('click button');
  }
}
