import 'package:flutter/material.dart';

class ContraniedBoxPage extends StatelessWidget {
  const ContraniedBoxPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget redBox = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('constrainedBox demo'),
          actions: <Widget>[
            UnconstrainedBox(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  BoxConstraints(minWidth: double.infinity, minHeight: 50.0),
              child: Container(
                height: 5,
                child: redBox,
              ),
            ),
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: redBox,
            )
          ],
        ));
  }
}
