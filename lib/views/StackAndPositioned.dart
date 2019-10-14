import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack and positioned Demo'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand, //使未定位元素充满整个屏幕，stack元素是堆叠的，第一个元素会被遮盖
          children: <Widget>[
            Positioned(
              left: 18.0,
              child: Text('I am Jack'),
            ),
            Container(
              child: Text(
                "Hello World",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            ),
          ],
        ),
      ),
    );
  }
}
