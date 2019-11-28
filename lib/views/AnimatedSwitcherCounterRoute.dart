import 'package:flutter/material.dart';
import 'ScaffoldBody.dart';

import 'SlideTransitionX.dart';

class AnimatedSwitcherCounterRoute extends StatefulWidget {
  AnimatedSwitcherCounterRoute({Key key}) : super(key: key);

  @override
  _AnimatedSwitcherCounterRouteState createState() =>
      _AnimatedSwitcherCounterRouteState();
}

class _AnimatedSwitcherCounterRouteState
    extends State<AnimatedSwitcherCounterRoute> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Body(
      title: '',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (
                Widget child,
                Animation<double> animation,
              ) {
                // //执行缩放动画
                // return ScaleTransition(
                //   child: child,
                //   scale: animation,
                // );

                //执行滑入滑出动画

                return SlideTransitionX(
                  child: child,
                  direction: AxisDirection.down,
                  position: animation,
                );
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            RaisedButton(
              child: Text('+1'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
