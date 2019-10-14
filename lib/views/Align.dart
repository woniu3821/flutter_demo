import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //   height: 120.0,
      //   width: 120.0,
      color: Colors.blue[50],
      child: Align(
        widthFactor: 2,
        heightFactor: 2,
        // alignment: Alignment.topRight,
        // alignment: Alignment(2, 0.0),//以矩形的中心为坐标原点进行便宜
        alignment: FractionalOffset(0.2, 0.6),
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
