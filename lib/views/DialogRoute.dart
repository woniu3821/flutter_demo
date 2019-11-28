import 'ScaffoldBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StatefulBuilder extends StatefulWidget {
  StatefulBuilder({Key key, @required this.builder})
      : assert(builder != null),
        super(key: key);

  final StatefulWidgetBuilder builder;

  @override
  _StatefulBuilderState createState() => _StatefulBuilderState();
}

class _StatefulBuilderState extends State<StatefulBuilder> {
  @override
  Widget build(BuildContext context) => widget.builder(context, setState);
}

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

    Future<void> showListDialog() async {
      int index = await showDialog<int>(
          context: context,
          builder: (BuildContext context) {
            var child = Column(
              children: <Widget>[
                ListTile(
                  title: Text('请选择'),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('$index'),
                        onTap: () => Navigator.of(context).pop(index),
                      );
                    },
                  ),
                )
              ],
            );

            return Dialog(
              child: child,
            );

            // return UnconstrainedBox(
            //   constrainedAxis: Axis.vertical,
            //   child: ConstrainedBox(
            //     constraints: BoxConstraints(maxWidth: 280),
            //     child: Material(
            //       child: child,
            //       type: MaterialType.card,
            //     ),
            //   ),
            // );
          });

      if (index != null) {
        print('点击了：$index');
      }
    }

    Widget _buiMaterialDialogTransitions(
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return ScaleTransition(
        scale: CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        ),
        child: child,
      );
    }

    Future<T> showCustomDialog<T>({
      @required BuildContext context,
      bool barrierDismissible = true,
      WidgetBuilder builder,
    }) {
      final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
      return showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext buildContext, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          final Widget pageChild = Builder(
            builder: builder,
          );

          return SafeArea(
            child: Builder(
              builder: (BuildContext context) {
                return theme != null
                    ? Theme(
                        data: theme,
                        child: pageChild,
                      )
                    : pageChild;
              },
            ),
          );
        },
        barrierDismissible: barrierDismissible,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black87,
        transitionDuration: const Duration(milliseconds: 150),
        transitionBuilder: _buiMaterialDialogTransitions,
      );
    }

    Future<bool> showDeleteConfirmDialog3() {
      bool _widthTree = false;
      return showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('提示'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("您确定删除当前文件吗？"),
                  Row(
                    children: <Widget>[
                      Text("同时删除子目录吗?"),
                      StatefulBuilder(
                        builder: (context, _setState) {
                          return Checkbox(
                            value: _widthTree,
                            onChanged: (bool value) {
                              _setState(() {
                                _widthTree = !_widthTree;
                              });
                            },
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('取消'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  child: Text('删除'),
                  onPressed: () {
                    Navigator.of(context).pop(_widthTree);
                  },
                ),
              ],
            );
          });
    }

    Future<bool> showDeleteConfirmDialog4() {
      bool _withTree = false;
      return showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('提示'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('确定要删除当前文件吗？'),
                  Row(
                    children: <Widget>[
                      Text('同时删除子目录？'),
                      // Checkbox(
                      //   value: _withTree,
                      //   onChanged: (bool value) {
                      //     // 此时context为对话框UI的根Element，我们
                      //     // 直接将对话框UI对应的Element标记为dirty
                      //     (context as Element).markNeedsBuild();
                      //     _withTree = !_withTree;
                      //   },
                      // )

                      // * TODO 通过Builder来获得构建Checkbox的`context`， 这是一种常用的缩小`context`范围的方式
                      Builder(
                        builder: (BuildContext context) {
                          return Checkbox(
                            value: _withTree,
                            onChanged: (bool value) {
                              (context as Element).markNeedsBuild();
                              _withTree = !_withTree;
                            },
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("取消"),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                FlatButton(
                  child: Text("删除"),
                  onPressed: () {
                    // 执行删除操作
                    Navigator.of(context).pop(_withTree);
                  },
                ),
              ],
            );
          });
    }

    Future<int> _showModalBottomSheet() {
      return showModalBottomSheet<int>(
          context: context,
          builder: (BuildContext context) {
            return ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('$index'),
                  onTap: () {
                    Navigator.of(context).pop(index);
                  },
                );
              },
            );
          });
    }

    // TODO: 报错目前无法调出全屏bottomSheet 需解决要调用showBottomSheet方法就必须得保证父级组件中有Scaffold

    PersistentBottomSheetController<int> _showBottomSheet() {
      return showBottomSheet<int>(
          context: context,
          builder: (BuildContext context) {
            return ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('$index'),
                  onTap: () {
                    print('$index');
                    Navigator.of(context).pop();
                  },
                );
              },
            );
          });
    }

    showLoadingDialog() {
      showDialog(
          context: context,
          barrierDismissible: false, //点击遮罩不关闭对话框
          builder: (context) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text('正在加载，请稍后...'),
                  )
                ],
              ),
            );
          });
    }

    changeSizeLoadingDialog() {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return UnconstrainedBox(
              constrainedAxis: Axis.vertical,
              child: SizedBox(
                width: 280,
                child: AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircularProgressIndicator(), //设置value表示百分比进度
                      Padding(
                        padding: const EdgeInsets.only(top: 26.0),
                        child: Text('正在加载，请稍后...'),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    }

    Future<DateTime> _showDatePicker1() {
      var date = DateTime.now();
      return showDatePicker(
        context: context,
        initialDate: date,
        firstDate: date,
        lastDate: date.add(
          Duration(days: 30),
        ),
      );
    }

    Future<DateTime> _showDatePicker2() {
      var date = DateTime.now();
      return showCupertinoModalPopup(
        context: context,
        builder: (ctx) {
          return SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              minimumDate: date,
              maximumDate: date.add(
                Duration(days: 30),
              ),
              maximumYear: date.year + 1,
              onDateTimeChanged: (DateTime value) {
                print(value);
              },
            ),
          );
        },
      );
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
          RaisedButton(
            onPressed: () {
              showListDialog();
            },
            child: Text('列表对话框'),
          ),
          RaisedButton(
            onPressed: () async {
              bool result = await showCustomDialog<bool>(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("提示"),
                      content: Text("您确定要删除当前文件吗？"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('取消'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child: Text('删除'),
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                        )
                      ],
                    );
                  });

              if (result == null) {
                print('点击了取消');
              } else {
                print('点击了删除');
              }
            },
            child: Text('自定义弹窗'),
          ),
          RaisedButton(
            child: Text('对话框3（复选框可点击）'),
            onPressed: () async {
              bool deleteTree = await showDeleteConfirmDialog3();
              if (deleteTree == null) {
                print('取消删除');
              } else {
                print('同时删除子目录：$deleteTree');
              }
            },
          ),
          RaisedButton(
            child: Text('对话框4（复选框可点击）'),
            onPressed: () async {
              bool deleteTree = await showDeleteConfirmDialog4();
              if (deleteTree == null) {
                print('取消删除');
              } else {
                print('同时删除子目录：$deleteTree');
              }
            },
          ),
          RaisedButton(
            child: Text('底部菜单列表模态框'),
            onPressed: () async {
              int type = await _showModalBottomSheet();
              print(type);
            },
          ),
          RaisedButton(
            child: Text('底部全屏列表模态框'),
            onPressed: _showBottomSheet,
          ),
          RaisedButton(
            child: Text('Loading 对话框'),
            onPressed: showLoadingDialog,
          ),
          RaisedButton(
            child: Text('Loading 对话框(自定义尺寸)'),
            onPressed: changeSizeLoadingDialog,
          ),
          RaisedButton(
            child: Text('日历选择'),
            onPressed: _showDatePicker1,
          ),
          RaisedButton(
            child: Text('日历选择(ios)'),
            onPressed: () {
              _showDatePicker2();
            },
          ),
        ],
      ),
    );
  }
}
