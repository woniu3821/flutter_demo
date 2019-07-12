import "package:flutter/material.dart";
import "package:hello_word/views/NewRoute.dart";
import 'package:hello_word/views/EchoRoute.dart';
import 'package:hello_word/views/RandomWordsWidget.dart';
import 'package:hello_word/views/AssetBundle.dart';
import 'package:hello_word/views/Echo.dart';
import 'package:hello_word/views/CounterWidget.dart';
import 'package:hello_word/views/CupertinoTestRoute.dart';
import "package:hello_word/views/TextPage.dart";
import "package:hello_word/views/ButtonPage.dart";
import "package:hello_word/views/ImageAndIcon.dart";
import "package:hello_word/views/RadioAndCheckBox.dart";
import "package:hello_word/views/TextFieldPage.dart";
import "package:hello_word/views/FormPage.dart";
import "package:hello_word/views/TitleBar.dart";
import "package:hello_word/views/RowAndColumnPage.dart";
import "package:hello_word/views/FlexPage.dart";

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
        "to_button": (context) => ButtonRoute(),
        "to_image_and_icon": (context) => ImageAndIcon(),
        "to_raido_and_checkbox": (context) => RadioAndCheckBox(),
        "to_textfield": (context) => TextFieldPage(),
        "to_form": (context) => FormPage(),
        "to_rowandcolumn": (context) => RowAndColumn(),
        "to_flex": (context) => FlexPage(),
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
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RandomWordsWidget(),
            Echo(
              text: "hello world",
              backgroundColor: Colors.yellowAccent,
            ),
            TitleBar(
              title: '基础widget',
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
            FlatButton(
              child: Text('open button page'),
              textColor: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, 'to_button');
              },
            ),
            RaisedButton(
              child: Text('open image and icon'),
              textColor: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, 'to_image_and_icon');
              },
            ),
            OutlineButton(
              child: Text('open radio and checkbox'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_raido_and_checkbox');
              },
            ),
            OutlineButton(
                child: Text('open textfield'),
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  Navigator.pushNamed(context, 'to_textfield');
                }),
            OutlineButton(
              child: Text('open to_form'),
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, 'to_form');
              },
            ),
            TitleBar(
              title: '布局类widget',
            ),
            RaisedButton(
              child: Text('open to_row_and_column'),
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, 'to_rowandcolumn');
              },
            ),
            RaisedButton(
              child: Text('open to_flex'),
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, 'to_flex');
              },
            ),
            _listView(),
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

  _listView() {
    var datas = List.generate(100, (index) {
      return "item ${index + 1}";
    });
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Text("${datas[index]}"),
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
          );
        },
        itemCount: datas.length,
      ),
    );
  }
}
