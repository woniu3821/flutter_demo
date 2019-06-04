import 'package:flutter/material.dart';

void main() => runApp(MyApp('Hello World'));

class MyApp extends StatefulWidget {
  String content;

  MyApp(this.content);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void increment() {
    setState(() {
      widget.content += 'dddddddd';
    });
  }

  @override
  Widget build(BuildContext context) {
    Paint paint = Paint();
    paint.color = Colors.green;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Box Constraints"),
        ),
        body: Container(
          color: Colors.red,
          child: Text(
            'HelloWorld',
            style: TextStyle(
              background: paint,
            ),
          ),
        ),
      ),
    );
  }
}
