import 'ScaffoldBody.dart';

import 'package:flutter/material.dart';

class FutureBuilderRoute extends StatefulWidget {
  FutureBuilderRoute({Key key}) : super(key: key);

  @override
  _FutureBuilderRouteState createState() => _FutureBuilderRouteState();
}

class _FutureBuilderRouteState extends State<FutureBuilderRoute> {
  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 2), () => "我是从网上模拟获取的数据");
  }

  @override
  Widget build(BuildContext context) {
    return Body(
      color: Colors.deepOrange,
      title: 'FutureBuilder和StreamBuilder',
      child: Center(
        child: FutureBuilder<String>(
          future: mockNetworkData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text("Error ${snapshot.error}");
              } else {
                return Text("Content: ${snapshot.data}");
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
