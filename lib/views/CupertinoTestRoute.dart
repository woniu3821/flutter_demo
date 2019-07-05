import 'package:flutter/cupertino.dart';

class CupertinoTestRoute extends StatelessWidget {
  const CupertinoTestRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Demo'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('Press'),
          color: CupertinoColors.activeBlue,
          onPressed: () {},
        ),
      ),
    );
  }
}
