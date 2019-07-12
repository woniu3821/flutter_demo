import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
    this.title,
    this.fontSize = 24.0,
  }) : super(key: key);
  final String title;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    // var title = ModalRoute.of(context).settings.arguments;
    return Container(
      width: 400,
      margin: EdgeInsets.symmetric(vertical: 15.0),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.black12,
      child: GradientText(title,
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]),
          style:
              TextStyle(fontSize: this.fontSize, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }
}
