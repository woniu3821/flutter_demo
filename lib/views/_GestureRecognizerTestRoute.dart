import 'package:flutter/gestures.dart';

import 'ScaffoldBody.dart';

import 'package:flutter/material.dart';
import '../tools/EventBus.dart';

class GestureRecognizerTestRoute extends StatefulWidget {
  GestureRecognizerTestRoute({Key key}) : super(key: key);

  @override
  _GestureRecognizerTestRouteState createState() =>
      _GestureRecognizerTestRouteState();
}

class _GestureRecognizerTestRouteState
    extends State<GestureRecognizerTestRoute> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false; //变色开关

  @override
  void dispose() {
    //用到GestureRecognizer的话一定要调用其dispose方法释放资源

    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    bus.emit('login', '我登陆了');
  }

  @override
  Widget build(BuildContext context) {
    return Body(
      title: '点击变色',
      child: Center(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(text: "你好世界"),
            TextSpan(
                text: '点我变色',
                style: TextStyle(
                  fontSize: 30.0,
                  color: _toggle ? Colors.blue : Colors.red,
                ),
                recognizer: _tapGestureRecognizer
                  ..onTap = () {
                    setState(() {
                      _toggle = !_toggle;
                    });
                  }),
            TextSpan(text: "你好世界"),
          ]),
        ),
      ),
    );
  }
}
