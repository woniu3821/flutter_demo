import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListViewPage extends StatefulWidget {
  @override
  _InfiniteListViewPageState createState() => new _InfiniteListViewPageState();
}

class _InfiniteListViewPageState extends State<InfiniteListViewPage> {
  static const loadingTag = "##loading##";
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('无限滚动组件'),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text('商品标题'),
            ),
            Expanded(
              //可以用SizedBox代替height:MediaQuery(context).size.height-24-56-56
              child: ListView.separated(
                itemCount: _words.length,
                itemBuilder: (context, index) {
                  //如果到了表尾
                  if (_words[index] == loadingTag) {
                    if (_words.length - 1 < 100) {
                      _retrieveData();

                      return Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.0,
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          '没有更多了',
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }
                  }
                  //显示单词列表项
                  return ListTile(title: Text(_words[index]));
                },
                separatorBuilder: (context, index) => Divider(height: .0),
              ),
            ),
          ],
        ));
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {
        //重新构建列表
      });
    });
  }
}
