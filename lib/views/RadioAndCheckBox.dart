import 'package:flutter/material.dart';

class RadioAndCheckBox extends StatefulWidget {
  RadioAndCheckBox({Key key}) : super(key: key);
  @override
  _RadioAndCheckBoxState createState() => new _RadioAndCheckBoxState();
}

class _RadioAndCheckBoxState extends State<RadioAndCheckBox> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Radio and Checkbox',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.amber,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switchSelected,
            activeColor: Colors.amberAccent,
            // inactiveTrackColor: Colors.blueAccent,
            onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value;
              });
              print(_checkboxSelected);
            },
          )
        ],
      ),
    );
  }
}
