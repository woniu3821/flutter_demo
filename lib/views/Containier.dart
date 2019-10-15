import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('containerpage demo'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50.0, left: 120.0),
              constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.red, Colors.orange],
                    center: Alignment.topLeft,
                    radius: .98,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0,
                    ),
                  ]),
              transform: Matrix4.rotationZ(0.2),
              alignment: Alignment.center,
              child: Text('5.20',
                  style: TextStyle(color: Colors.white, fontSize: 40.0)),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text('Hello World!'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text('Hello World!'),
            ),
          ],
        ));
  }
}
