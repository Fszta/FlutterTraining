import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
    home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> favoritesQuotes = [
    Quote(
        author: "Talleyrand",
        content:"Appuyons-nous sur les principes, ils finiront bien par céder."
    ),
    Quote(
        author: "Talleyrand",
        content:"Tout ce qui est excessif est insignifiant."
    )
  ];

  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote);
  }

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
        children: favoritesQuotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({ this.quote });

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
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[700]
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[900]
              ),
            ),
          ],
        ),
      )
    );
  }
}
