import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 7"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset("assets/zao.jpg"),
            flex: 3,
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(25.0),
              color: Colors.redAccent,
              child: Text("Container 1")
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(25.0),
              color: Colors.redAccent,
              child: Text("Container 2")
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(25.0),
              color: Colors.redAccent,
              child: Text("Container 1")
            ),
          )
        ],
      )
    );
  }
}