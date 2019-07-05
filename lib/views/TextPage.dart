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
          )
        ],
      ),
    );
  }
}
