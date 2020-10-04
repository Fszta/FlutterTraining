import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.content,
                style: TextStyle(fontSize: 20.0, color: Colors.grey[700]),
              ),
              SizedBox(height: 8.0),
              Text(
                quote.author,
                style: TextStyle(fontSize: 16.0, color: Colors.grey[900]),
              ),
              SizedBox(height: 4.0),
              FlatButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete_rounded),
                  label: Text("Delete quote"))
            ],
          ),
        ));
  }
}
