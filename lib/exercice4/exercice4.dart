import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice4'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.blueAccent,
        child: Text(
            "Welcom to my Flutter app",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
        )
        )
      )
    );
  }
}