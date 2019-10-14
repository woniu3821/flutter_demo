import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatelessWidget {
  const DecoratedBoxPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBoxPage demo'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.orange[700]]),
            borderRadius: BorderRadius.circular(3.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
