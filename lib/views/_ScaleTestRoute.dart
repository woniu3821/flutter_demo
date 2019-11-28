import 'ScaffoldBody.dart';

import 'package:flutter/material.dart';

class ScaleTestRoute extends StatefulWidget {
  ScaleTestRoute({Key key}) : super(key: key);

  @override
  _ScaleTestRouteState createState() => _ScaleTestRouteState();
}

class _ScaleTestRouteState extends State<ScaleTestRoute> {
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Body(
      title: '缩放',
      child: Center(
        child: GestureDetector(
          child: Image.asset(
            'images/ships.jpg',
            width: _width,
          ),
          onScaleUpdate: (ScaleUpdateDetails e) {
            setState(() {
              _width = 200 * e.scale.clamp(.8, 10.0);
            });
          },
        ),
      ),
    );
  }
}
