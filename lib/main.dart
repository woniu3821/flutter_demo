import "package:flutter/material.dart";
import "package:hello_word/views/NewRoute.dart";
import 'package:hello_word/views/EchoRoute.dart';
import 'package:hello_word/views/RandomWordsWidget.dart';
import 'package:hello_word/views/AssetBundle.dart';
import 'package:hello_word/views/Echo.dart';
import 'package:hello_word/views/CounterWidget.dart';
import 'package:hello_word/views/CupertinoTestRoute.dart';
import "package:hello_word/views/TextPage.dart";

//widget自身管理状态
// import 'package:hello_word/views/BoxChange.dart';

//父widget管理子widget的state
import 'package:hello_word/views/ParentWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        //路由表
        "new_page": (context) => NewRoute(),
        "new_page_params": (context) => EchoRoute(),
        "new_page_assets": (context) => AssetBundle(),
        "new_page_life": (context) => CounterWidget(),
        "new_page_change_box_state": (context) => ParentWidget(),
        "cupertino_page": (context) => CupertinoTestRoute(),
        "to_text": (context) => TextRoute(),
      },
      home: new MyHomePage(title: 'Flutter Demo HomePage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title)),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('open new route'),
              textColor: Colors.blue,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   new MaterialPageRoute(builder: (context) {
                //     return new NewRoute();
                //   }),
                // );

                Navigator.pushNamed(context, "new_page");
              },
            ),
            FlatButton(
              child: Text('open new with params'),
              textColor: Colors.redAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page_params',
                    arguments: "hello world");
              },
            ),
            FlatButton(
              child: Text('open assets'),
              textColor: Colors.redAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page_assets');
              },
            ),
            FlatButton(
              child: Text('open life'),
              textColor: Colors.greenAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page_life');
              },
            ),
            FlatButton(
              child: Text('open change state'),
              textColor: Colors.brown,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page_change_box_state');
              },
            ),
            FlatButton(
              child: Text('open cupertino page'),
              textColor: Colors.lightBlue,
              onPressed: () {
                Navigator.pushNamed(context, 'cupertino_page');
              },
            ),
            FlatButton(
              child: Text('open text page'),
              textColor: Colors.orangeAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'to_text');
              },
            ),
            RandomWordsWidget(),
            Echo(
              text: "hello world",
              backgroundColor: Colors.yellowAccent,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
