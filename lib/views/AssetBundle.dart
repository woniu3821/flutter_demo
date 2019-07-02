import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class AssetBundle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future<String> loadAsset() async {
    //   return await rootBundle.AssetImage('graphics/head.png');
    // }

    // String data;
    // setData() async {
    //   data = await loadAsset(); //getData()延迟执行后赋值给data
    // }

    // setData();
    // print(data);

    return new DecoratedBox(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('graphics/head.png'),
        ),
      ),
    );
  }
}
