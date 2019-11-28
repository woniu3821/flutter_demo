import 'package:flutter/material.dart';

class HeroAnimationRoute extends StatelessWidget {
  const HeroAnimationRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero动画'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: InkWell(
          child: Hero(
            tag: 'avatar',
            child: ClipOval(
              child: Image.asset("images/avatar.png", width: 50.0),
            ),
          ),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(pageBuilder: (
              BuildContext context,
              Animation animation,
              Animation secondaryAnimation,
            ) {
              return new FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text("原图"),
                  ),
                  body: HeroAnimationRouteB(),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'avatar',
        child: Image.asset('images/avatar.png'),
      ),
    );
  }
}
