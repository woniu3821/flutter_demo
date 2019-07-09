import 'package:flutter/material.dart';

class ButtonRoute extends StatelessWidget {
  const ButtonRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('FlatButton'),
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () => print('点击了'),
          ),
          RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () {},
          ),
          OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
