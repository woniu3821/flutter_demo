import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column Demo'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              textDirection:
                  TextDirection.ltr, //表示水平方向子widget的布局顺序(是从左往右还是从右往左)
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max, //默认最大宽度
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min, //宽度根据内容撑开
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl, //内容从右向左排
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  " hello world ",
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(" I am Jack "),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  " hello world ",
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(" I am Jack "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //主轴
              crossAxisAlignment: CrossAxisAlignment.start, //交叉轴
              children: <Widget>[
                Container(
                  color: Colors.green,
                  height: 350.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, //垂直方向水平居中
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,//水平方向（相当于两条水平线两端对齐）
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //剩余空间等分
                      mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                          child: Column(
                            mainAxisSize: MainAxisSize.min, //无效，内层Colum高度为实际高度
                            children: <Widget>[
                              Text("hello world "),
                              Text("I am Jack "),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          child: Column(
                            mainAxisSize: MainAxisSize.min, //无效，内层Colum高度为实际高度
                            children: <Widget>[
                              Text("hello world pppp "),
                              Text("I am Jack "),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 400.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end, //垂直方向水平居中
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,//水平方向（相当于两条水平线两端对齐）
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //剩余空间等分
                      mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                          child: Column(
                            mainAxisSize: MainAxisSize.min, //无效，内层Colum高度为实际高度
                            children: <Widget>[
                              Text("hello world "),
                              Text("I am Jack "),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          child: Column(
                            mainAxisSize: MainAxisSize.min, //无效，内层Colum高度为实际高度
                            children: <Widget>[
                              Text("hello world pppp "),
                              Text("I am Jack "),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
