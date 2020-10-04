import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 5"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        // List of widget
        children: <Widget>[
          Text("Hello world"),
          FlatButton(
            onPressed: (){},
            color: Colors.green,
            child: Text("Click"),
          ),
          Container(
            color: Colors.blueAccent,
            child: Text("Inside container"),
            padding: EdgeInsets.all(25.0),
          )
        ],
      ),
    );
  }
}