import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../tools/downloadWithChunks.dart';
import '../tools/user.dart';

class DioRoute extends StatefulWidget {
  DioRoute({Key key}) : super(key: key);

  @override
  _DioRouteState createState() => _DioRouteState();
}

class _DioRouteState extends State<DioRoute> {
  Dio _dio = new Dio();

//分块下载方法

  main() async {
    var url = "http://download.dcloud.net.cn/HBuilder.9.0.2.macosx_64.dmg";
    //! TODO: 路径报不存在
    var savePath = "./download/HBuilder.9.0.2.macosx_64.dmg";
    await downloadWithChunks(url, savePath,
        onReceiveProgress: (received, total) {
      if (total != -1) {
        print("${(received / total * 100).floor()}%");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dio 请求'),
      ),
      body: new Container(
        alignment: Alignment.center,
        child: FutureBuilder(
          future: _dio.get("https://api.github.com/orgs/flutterchina/repos"),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(user.email);
            //执行分块下载
            // main();
            if (snapshot.connectionState == ConnectionState.done) {
              Response response = snapshot.data;
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              //请求成功
              return ListView(
                children: response.data
                    .map<Widget>((e) => ListTile(
                          title: Text(e["full_name"]),
                        ))
                    .toList(),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
