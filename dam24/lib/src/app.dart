import 'package:flutter/material.dart';
import 'package:dam24/src/screens/card.dart';

class MyApp extends StatelessWidget {
  final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);
  final double iconSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
                title: Text(
                  "I Love Flutter",
                  style: textStyle,
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                  size: 40.0,
                )),
            MyCard(
                title: Text(
                  "I Love Kotlin",
                  style: textStyle,
                ),
                icon: Icon(
                  Icons.thumb_up,
                  color: Colors.blueAccent,
                  size: 40.0,
                )),
            MyCard(
                title: Text(
                  "I Love PDF",
                  style: textStyle,
                ),
                icon: Icon(
                  Icons.share,
                  color: Colors.pinkAccent,
                  size: 40.0,
                ))
          ],
        ),
      ),
    );
  }
}
