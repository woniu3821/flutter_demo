import 'ScaffoldBody.dart';
import 'package:flutter/material.dart';

class DialogRoute extends StatelessWidget {
  const DialogRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> showDeleteConfirmDialog1() {
      return showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('提示'),
              content: Text('您确认删除当前文件吗？'),
              actions: <Widget>[
                FlatButton(
                  child: Text('取消'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  child: Text("删除"),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                )
              ],
            );
          });
    }

    Future<void> changeLanguage() async {
      int i = await showDialog<int>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text('请选择语言'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, 1);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text('简体中文'),
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, 2);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text('美国英语'),
                  ),
                ),
              ],
            );
          });

      if (i != null) {
        print('选择了：${i == 1 ? "简体中文" : "美国英语"}');
      }
    }

    return Body(
      title: '对话框',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text('对话框1'),
            onPressed: () async {
              bool delete = await showDeleteConfirmDialog1();
              if (delete == null) {
                print('取消删除');
              } else {
                print('确认删除');
              }
            },
          ),
          RaisedButton(
            onPressed: () {
              changeLanguage();
            },
            child: Text('对话框2'),
          ),
        ],
      ),
    );
  }
}
