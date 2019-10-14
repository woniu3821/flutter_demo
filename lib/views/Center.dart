import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Center demo'),
        ),
        body: Column(
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: Text('xxxx'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                widthFactor: 1,
                heightFactor: 1,
                child: Text('xxx'),
              ),
            )
          ],
        ));
  }
}
