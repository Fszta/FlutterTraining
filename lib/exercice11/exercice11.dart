import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> favoriteQuotes = [
    Quote(
        author: "Talleyrand",
        content:
            "Appuyons-nous sur les principes, ils finiront bien par céder."),
    Quote(
        author: "Talleyrand",
        content: "Tout ce qui est excessif est insignifiant.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Favorite Quotes"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: favoriteQuotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    favoriteQuotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
