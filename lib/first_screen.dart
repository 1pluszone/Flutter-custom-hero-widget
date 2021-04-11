import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hero widget demonstration"),
        ),
        body: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Hero(
                  tag: 1,
                  child: Image.asset(
                    "assets/image.jpg",
                    width: 200,
                  ),
                  flightShuttleBuilder: (BuildContext context,
                      Animation<double> animation,
                      HeroFlightDirection heroDirection,
                      BuildContext fromContext,
                      BuildContext toContext) {
                    final Hero toHero = toContext.widget;
                    return RotationTransition(
                      turns: animation,
                      child: toHero.child,
                    );
                  },
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  child: Text("go to next page"),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ))),
            ),
          ],
        ));
  }
}
