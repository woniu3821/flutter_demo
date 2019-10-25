import "package:flutter/material.dart";
// import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
import "package:hello_word/views/WrapAndFlowPage.dart";
import "package:hello_word/views/StackAndPositioned.dart";
import "package:hello_word/views/PaddingPage.dart";
import "package:hello_word/views/Align.dart";
import 'package:hello_word/views/Center.dart';
import 'package:hello_word/views/ConstrainedBox.dart';
import 'package:hello_word/views/DecoratedBox.dart';
import 'package:hello_word/views/Transform.dart';
import 'package:hello_word/views/Containier.dart';
import 'package:hello_word/views/ScaffoldRoute.dart';
import 'package:hello_word/views/ClipPage.dart';
import 'package:hello_word/views/SingleChildScrollView.dart';
import 'package:hello_word/views/ListView.builder.dart';
import 'package:hello_word/views/ListViewSeparated.dart';
import 'package:hello_word/views/InfiniteListView.dart';
import 'package:hello_word/views/GridView.dart';
import 'package:hello_word/views/GridView.builder.dart';
import 'package:hello_word/views/CustomScrollView.dart';
import 'package:hello_word/views/ScrollController.dart';
import 'package:hello_word/views/ScrollNotificationTestRoute.dart';
import 'package:hello_word/views/WillPopScopeTestRoute.dart';
import 'package:hello_word/views/ShareTestDataRoute.dart';
import 'package:hello_word/views/ProviderRoute.dart';
import 'package:hello_word/views/NavBar.dart';
import 'package:hello_word/views/ThemeTestRoute.dart';
import 'package:hello_word/views/FutureBuilder.dart';
import 'package:hello_word/views/StreamBuilder.dart';
import 'package:hello_word/views/DialogRoute.dart';
import 'package:hello_word/views/GestureDetectorTestRoute.dart';
import 'package:hello_word/views/_Drag.dart';
import 'package:hello_word/views/_ScaleTestRoute.dart';
import 'package:hello_word/views/_GestureRecognizerTestRoute.dart';

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
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale.fromSubtags(languageCode: 'zh'),
        const Locale.fromSubtags(languageCode: 'en'),
      ],
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
        "to_wrap_and_flow": (context) => WrapAndFlow(),
        "to_stack_and_positioned": (context) => StackAndPositioned(),
        "to_padding": (context) => PaddingPage(),
        "to_align": (context) => AlignPage(),
        "to_center": (context) => CenterPage(),
        'to_constrained': (context) => ContraniedBoxPage(),
        'to_decoratedbox': (context) => DecoratedBoxPage(),
        'to_transform': (context) => TransformPage(),
        'to_container': (context) => ContainerPage(),
        'to_scaffoldroute': (context) => ScaffoldRoute(),
        'to_clippage': (context) => ClipPage(),
        'to_singlescrollview': (context) => SingleScrollViewPage(),
        'to_listviewbuilder': (context) => ListViewPage(),
        'to_listviewseparated': (context) => ListViewSeparatedPage(),
        'to_infinitelistview': (context) => InfiniteListViewPage(),
        'to_gridviewpage': (context) => GridViewPage(),
        'to_gridviewbuilder': (context) => GridViewBuildPage(),
        'to_customscrollview': (context) => CustomScrollViewPage(),
        'to_scrollcontroller': (context) => ScrollControllerPage(),
        'to_scrollnotification': (context) => ScrollNotificationPage(),
        'to_willpopscope': (context) => WillPopScopePage(),
        'to_sharedatatest': (context) => ShareTestDataInherited(),
        'to_providerroute': (context) => ProviderRoute(),
        'to_themeroute': (context) => ThemeTestRoute(),
        'to_futureroute': (context) => FutureBuilderRoute(),
        'to_steamroute': (context) => StreamBuilderRoute(),
        'to_dialogroute': (context) => DialogRoute(),
        'to_gestureroute': (context) => GestureDetectorTestRoute(),
        'to_dragroute': (context) => DragRoute(),
        'to_scaleroute': (context) => ScaleTestRoute(),
        'to_gesturerecognizer': (context) => GestureRecognizerTestRoute(),
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
            RaisedButton(
              child: Text('open to_wrap_and_flow'),
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, 'to_wrap_and_flow');
              },
            ),
            RaisedButton(
              child: Text('open to_stack_and_positioned'),
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, 'to_stack_and_positioned');
              },
            ),
            FlatButton(
              child: Text(
                'open to_align',
                style: TextStyle(color: Colors.deepOrange),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'to_align');
              },
            ),
            RaisedButton(
              child: Text('open to_center',
                  style: TextStyle(color: Colors.deepOrangeAccent)),
              onPressed: () {
                Navigator.pushNamed(context, 'to_center');
              },
            ),
            TitleBar(
              title: '容器类widget',
            ),
            FlatButton(
              child: Text(
                'open to_padding',
                style: TextStyle(color: Colors.brown),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'to_padding');
              },
            ),
            FlatButton(
                child: Text(
                  'open to_constrained',
                  style: TextStyle(color: Colors.redAccent),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'to_constrained');
                }),
            FlatButton(
              child: Text(
                'open to_decoratedbox',
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'to_decoratedbox');
              },
            ),
            OutlineButton(
              child: Text(
                'open to_transform',
                style: TextStyle(color: Colors.pinkAccent),
              ),
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, 'to_transform');
              },
            ),
            OutlineButton(
              child: Text(
                'open to_container',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, 'to_container');
              },
            ),
            FlatButton(
              child: Text('open to_scaffoldroute',
                  style: TextStyle(color: Colors.greenAccent)),
              onPressed: () {
                Navigator.pushNamed(context, 'to_scaffoldroute');
              },
            ),
            RaisedButton(
              child: Text('open to_clippage',
                  style: TextStyle(color: Colors.amber)),
              onPressed: () {
                Navigator.pushNamed(context, 'to_clippage');
              },
            ),
            TitleBar(
              title: '可滚动组件',
            ),
            RaisedButton(
              child: Text('open to_singlescrollview'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_singlescrollview');
              },
            ),
            RaisedButton(
              child: Text('open to_listviewbuilder'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_listviewbuilder');
              },
            ),
            RaisedButton(
              child: Text('open to_listviewseparated'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_listviewseparated');
              },
            ),
            RaisedButton(
              child: Text('open to_infinitelistview'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_infinitelistview');
              },
            ),
            RaisedButton(
              child: Text('open to_gridviewpage',
                  style: TextStyle(color: Colors.lightBlueAccent)),
              onPressed: () {
                Navigator.pushNamed(context, 'to_gridviewpage');
              },
            ),
            FlatButton(
              child: Text('open to_gridviewbuilder'),
              textColor: Colors.black26,
              onPressed: () {
                Navigator.pushNamed(context, 'to_gridviewbuilder');
              },
            ),
            RaisedButton(
                child: Text('open to_customscrollview'),
                onPressed: () {
                  Navigator.pushNamed(context, 'to_customscrollview');
                }),
            FlatButton(
                child: Text('open to_scrollcontroller'),
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  Navigator.pushNamed(context, 'to_scrollcontroller');
                }),
            OutlineButton(
              child: Text('open to_scrollnotification'),
              color: Colors.amberAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'to_scrollnotification');
              },
            ),
            TitleBar(title: '功能型组件'),

            RaisedButton(
                child: Text('open to_willpopscope'),
                onPressed: () {
                  Navigator.pushNamed(context, 'to_willpopscope');
                }),
            FlatButton(
              child: Text('open to_sharedatatest'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_sharedatatest');
              },
            ),
            RaisedButton(
              child: Text('open to_providerroute'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_providerroute');
              },
            ),
            NavBar(
              color: Colors.green,
              title: '测试标题',
            ),
            NavBar(
              color: Colors.white,
              title: '测试颜色',
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'to_themeroute');
              },
              child: Text('open to_themeroute'),
            ),
            RaisedButton(
              child: Text('open to_futureroute'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_futureroute');
              },
            ),
            RaisedButton(
              child: Text('open to_steamroute'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_steamroute');
              },
            ),
            OutlineButton(
              child: Text('open to_dialogroute'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_dialogroute');
              },
            ),
            TitleBar(title: '事件处理与通知'),
            RaisedButton(
              child: Text('open to_gestureroute'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_gestureroute');
              },
            ),
            RaisedButton(
              child: Text('open to_dragroute'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_dragroute');
              },
            ),
            RaisedButton(
              child: Text('open to_scaleroute'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_scaleroute');
              },
            ),
            RaisedButton(
              child: Text('open to_gesturerecognizer'),
              onPressed: () {
                Navigator.pushNamed(context, 'to_gesturerecognizer');
              },
            ),
            // _listView(),
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
