import 'package:flutter/material.dart';

class WillPopScopePage extends StatefulWidget {
  WillPopScopePage({Key key}) : super(key: key);

  _WillPopScopePageState createState() => _WillPopScopePageState();
}

class _WillPopScopePageState extends State<WillPopScopePage> {
  DateTime _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('连续两次返回退出'),
      ),
      body: new WillPopScope(
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) >
                  Duration(seconds: 1)) {
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: Container(
          alignment: Alignment.center,
          child: Text('1秒内连续按俩次返回退出'),
        ),
      ),
    );
  }
}
