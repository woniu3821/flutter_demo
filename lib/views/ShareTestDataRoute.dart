import 'package:flutter/material.dart';

import 'package:hello_word/views/ShareDataWidget.dart';

import 'package:hello_word/views/ShareTest.dart';

class ShareTestDataInherited extends StatefulWidget {
  ShareTestDataInherited({Key key}) : super(key: key);

  _ShareTestDataInheritedState createState() => _ShareTestDataInheritedState();
}

class _ShareTestDataInheritedState extends State<ShareTestDataInherited> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('数据共享'),
      ),
      body: Center(
        child: ShareDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ShareTest(),
              ),
              RaisedButton(
                child: Text('Increment'),
                onPressed: () => setState(() => ++count),
              )
            ],
          ),
        ),
      ),
    );
  }
}
