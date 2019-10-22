import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String title;
  final Widget child;
  final Color color;
  const Body(
      {Key key,
      @required this.title,
      @required this.child,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: color),
        ),
      ),
      body: child,
    );
  }
}
