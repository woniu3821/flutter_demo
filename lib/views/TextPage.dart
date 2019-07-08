import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  const TextRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String text = 'hello word';

    return Scaffold(
      appBar: AppBar(
        title: Text('Text style Demo'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            text,
            textAlign: TextAlign.center,
          ),
          Text(
            text * 10,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            text.toUpperCase(),
            textScaleFactor: 1.5,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: 'Courier',
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
              text: 'Home：',
            ),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.blue),
            ),
          ])),
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text(
                  "I am Jack",
                  style: TextStyle(
                    inherit: false, //不继承样式
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
