import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Flutter', 'Es', 'Genial'];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App con Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              flutterText,
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            ElevatedButton(
              child: Text(
                "Actualizar",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
              onPressed: () {
                onPressedButton();
              },
            ),
            ElevatedButton(
              child: Text(
                "Actualizar",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
              onPressed: () {
                onPressedButton();
              },
            )
          ],
        )),
      ),
    );
  }
}
