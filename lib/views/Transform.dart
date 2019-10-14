import 'package:flutter/material.dart';

import 'dart:math' as math;

class TransformPage extends StatelessWidget {
  const TransformPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('transformpage demo'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //   alignment: Alignment.center,
              color: Colors.black,
              child: new Transform(
                alignment: Alignment.topRight,
                transform: new Matrix4.skewY(0.3),
                child: new Container(
                  padding: new EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.translate(
                offset: Offset(-20.0, -5.0),
                child: Text('Hello Word'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                angle: math.pi / 2,
                child: Text('hello world'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.scale(
                scale: 1.5,
                child: Text('hello world'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text('Hello World'),
              ),
            ),
            Text(
              "你好",
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            ),
          ],
        ));
  }
}
