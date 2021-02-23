import 'package:flutter/material.dart';
import 'Quote.dart';
import 'card_return.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Quotes(),
)
);

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes= [
    Quote(text: "Hello", author: "AA"),
    Quote(text: "There", author: "BB"),
    Quote(text: "You", author: "CC")
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
       body: Column(
         children: quotes.map((e) => card_return(
             quote:e,
           delete: (){
               setState(() {
                 quotes.remove(e);
               });
           },
         )).toList(),
      ),
    );
  }
}



