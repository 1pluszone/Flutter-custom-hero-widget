import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second screen")),
        body: Align(
            alignment: Alignment.topRight,
            child: Hero(
              tag: 1,
              child: Image.asset(
                "assets/image.jpg",
                width: 100,
              ),
            )));
  }
}
