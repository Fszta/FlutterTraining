import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: DeveloperCard()
));


class DeveloperCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer Card"),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/zao2.jpeg"),
                radius:45.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[800]
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 3.0,
              )
            ),
            SizedBox(height: 15),
            Text(
              "Fszta",
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 45),
            Text(
                "DEVELOPER LEVEL",
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 15),
            Text(
              "9",
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 45),
            Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                    color: Colors.redAccent
                ),
                Text(
                  "fszta@mail.com",
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 1.0
                  )
                ),
              ],

            )
          ],
        ),
      ),
    );
  }
}