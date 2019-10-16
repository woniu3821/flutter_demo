import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatelessWidget {
  const ListViewSeparatedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.red,
    );

    Widget divider2 = Divider(
      color: Colors.blue,
    );

    return Scaffold(
      appBar: AppBar(title: Text('ListView.separated demo')),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("$index"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? divider1 : divider2;
        },
      ),
    );
  }
}
