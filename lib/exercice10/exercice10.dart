import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> favoritesQuotes = [
    "Appuyons-nous sur les principes, ils finiront bien par céder",
    "Tout ce qui est excessif est insignifiant."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Favorites Quotes"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: favoritesQuotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
