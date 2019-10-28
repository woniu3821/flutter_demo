import 'ScaffoldBody.dart';
import 'package:flutter/material.dart';

class NotificationRoute extends StatefulWidget {
  NotificationRoute({Key key}) : super(key: key);

  @override
  _NotificationRouteState createState() => _NotificationRouteState();
}

class _NotificationRouteState extends State<NotificationRoute> {
  String _msg = '';
  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Widget树Notification',
      child: NotificationListener<MyNotification>(
        onNotification: (notification) {
          setState(() {
            _msg += notification.msg + " ";
          });
          print(notification.msg);
          return true;
        },
        child: Center(
          child: NotificationListener<MyNotification>(
            onNotification: (notification) {
              print(notification.msg);
              return false; //true:阻止通知冒泡 false:不阻止
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Builder(
                  builder: (context) {
                    return RaisedButton(
                      //点击按钮分发通知
                      onPressed: () => MyNotification("Hi").dispatch(context),
                      child: Text('Send Notification'),
                    );
                  },
                ),
                Text(_msg),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
