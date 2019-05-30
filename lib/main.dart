import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ShowDialog());

class ShowDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: new AppBar(title: new Text('Show Dialog')),
        body: Builder(
          builder: (context) {
            return RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                        title: Text('CupertinoAlertDialog'),
                        content: Text('This is a CupertinoAlertDialog'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),

                  // ======================================================
                  /*  builder: (context) => AlertDialog(
                        title: Text('AlertDialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text('This is an alert dialog'),
                              Text('add two options.'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ), */

// =====================================================

/*                   builder: (context) => SimpleDialog(
                        title: Text('Simple Dialog Demo'),
                        // backgroundColor: Colors.blue[300],
                        children: <Widget>[
                          SimpleDialogOption(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SimpleDialogOption(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ), */
                );
              },
              child: Text('Show Dialog'),
            );
          },
        ),
      ),
    );
  }
}

/* class ShowAboutDialogWidge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI Widget -- 对话框'),
        ),
        body: Builder(
          builder: (context) => RaisedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'Flutter UI Widget -- 对话框',
                    applicationVersion: '1.0.0',
                  );
                },
                child: Text('RaisedButton'),
              ),
        ),
      ),
    );
  }
} */
