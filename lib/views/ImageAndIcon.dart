import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class IconFont {
  static const String _family = "iconfont";
  IconFont._();
  static const IconData icon_lock =
      IconData(0xe612, fontFamily: _family, matchTextDirection: true);
  static const IconData icon_telegram =
      IconData(0xe618, fontFamily: _family, matchTextDirection: true);
  static const IconData icon_talk =
      IconData(0xe619, fontFamily: _family, matchTextDirection: true);
  static const IconData icon_shield =
      IconData(0xe61a, fontFamily: _family, matchTextDirection: true);
}

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({Key key}) : super(key: key);
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image and Icon'),
      ),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage("images/avatar.png"),
            width: 50.0,
          ),
          Image.asset(
            "images/avatar.png",
            width: 50.0,
          ),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100.0,
            fit: BoxFit.fill,
          ),
          Image(
            image: AssetImage("images/avatar.png"),
            width: 100.0,
            color: Colors.blue,
            colorBlendMode: BlendMode.difference,
          ),
/*           Image(
            image: AssetImage("images/avatar.png"),
            width: 100.0,
            height: 200.0,
            repeat: ImageRepeat.repeatY,
          ), */
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.accessible,
                color: Colors.green,
              ),
              Icon(
                Icons.error,
                color: Colors.green,
              ),
              Icon(
                Icons.fingerprint,
                color: Colors.green,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                IconFont.icon_lock,
                color: Colors.purple,
              ),
              Icon(
                IconFont.icon_telegram,
                color: Colors.purple,
                size: 30.0,
              ),
              Icon(
                IconFont.icon_talk,
                color: Colors.purple,
              ),
            ],
          )
        ],
      ),
    );
  }
}
