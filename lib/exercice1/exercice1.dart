import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("My first flutter application"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
            "Welcom",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            )
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: Text("Click")
      ),
    );
  }
}