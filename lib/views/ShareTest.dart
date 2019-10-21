import 'package:flutter/material.dart';

import 'package:hello_word/views/ShareDataWidget.dart';

class ShareTest extends StatefulWidget {
  ShareTest({Key key}) : super(key: key);

  _ShareTestState createState() => _ShareTestState();
}

class _ShareTestState extends State<ShareTest> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
    // return Text('测试');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Dependencies change');
  }
}
