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
        title: Text("Exercice 6"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(25.0),
                color : Colors.green,
                child: Text("Container 1")
              ),
              Container(
                  padding: EdgeInsets.all(25.0),
                  color : Colors.green,
                  child: Text("Container 2")
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: EdgeInsets.all(25.0),
                  color : Colors.green,
                  child: Text("Container 3")
              ),
              Container(
                  padding: EdgeInsets.all(25.0),
                  color : Colors.green,
                  child: Text("Container 4")
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(25.0),
            padding: EdgeInsets.all(25.0),
            color : Colors.green,
            child: Text("Container 1"),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            color: Colors.blueAccent,
            child: Text("Container 2"),
          ),
          Container(
            padding : EdgeInsets.all(25.0),
            color: Colors.redAccent,
            child: Text("Container 3")
          )
        ],
      ),
    );
  }
}