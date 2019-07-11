import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);
  @override
  _TextFieldPageState createState() => new _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  var _pass = '';

  TextEditingController _unameController = new TextEditingController();

  TextEditingController _selectionController =
      new TextEditingController(text: '333');

  FocusNode _focusNode1 = new FocusNode();
  FocusNode _focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              height: 50.0,
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              decoration: new BoxDecoration(
                color: Colors.white24, //背景色
                border: new Border.all(color: Color(0xFF446279), width: 2.0),
                borderRadius: new BorderRadius.circular(12.0),
              ),
              child: new TextFormField(
                decoration: InputDecoration.collapsed(hintText: 'hello'),
              ),
            ),
            Theme(
              data: new ThemeData(
                primaryColor: Colors.green,
                hintColor: Colors.black38,
              ),
              child: TextField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "用户名",
                    //   fillColor: Colors.blue.shade100,
                    hintText: "用户名或者邮箱",
                    prefixIcon: Icon(Icons.person),
                    suffixText: 'UserName',
                    helperText: '支持数字、@、字母、下划线组合，限20个字符以内'),
                onChanged: (value) {
                  print(_unameController.text);
                },
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock),
                enabled: false, //禁用
              ),
              obscureText: true,
              onChanged: (value) {
                _pass = value;
                print(_pass);
              },
            ),
            TextField(
                controller: _selectionController,
                textInputAction: TextInputAction.search,
                maxLength: 30,
                onSubmitted: (value) {
                  print(value);
                }),
            Text(
              '焦点控制',
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFF999999),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15.0),
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //         width: 1.0, color: Colors.indigo, style: BorderStyle.solid),
              //   ),
              child: Column(
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    focusNode: _focusNode1,
                    decoration: InputDecoration(labelText: 'input1'),
                  ),
                  TextField(
                    autofocus: true,
                    focusNode: _focusNode2,
                    decoration: InputDecoration(labelText: 'input2'),
                  ),
                  Builder(
                    builder: (ctx) {
                      return Column(
                        children: <Widget>[
                          RaisedButton(
                            child: Text('移动焦点'),
                            onPressed: () {
                              //将焦点从第一个TextField移动到第二个TextField
                              //第一种写法
                              //   FocusScope.of(context).requestFocus(_focusNode2);

                              //第二种写法

                              if (null == focusScopeNode) {
                                focusScopeNode = FocusScope.of(context);
                              }
                              focusScopeNode.requestFocus(_focusNode2);
                            },
                          ),
                          RaisedButton(
                              child: Text('隐藏键盘'),
                              onPressed: () {
                                //当所有的编辑框都失去焦点的时候键盘就会收起
                                _focusNode1.unfocus();
                                _focusNode2.unfocus();
                              }),
                        ],
                      );
                    },
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      hintColor: Colors.grey[200],
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(color: Colors.grey),
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: '用户名',
                            hintText: '用户名或密码',
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: '密码',
                            hintText: '您的登录密码',
                            prefixIcon: Icon(Icons.lock),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13.0),
                          ),
                          obscureText: true,
                        ),
                        Container(
                          child: TextField(
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: '电子邮件地址',
                              prefixIcon: Icon(Icons.email),
                              border: InputBorder.none,
                              //   labelStyle: TextStyle(color: Colors.blue),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey[200], width: 1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //监听输入变化
    _unameController.addListener(() {
      print(_unameController.text);
    });
    //监听焦点变化
    _focusNode1.addListener(() {
      print(_focusNode1.hasFocus);
    });
  }
}
