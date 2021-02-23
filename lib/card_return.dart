import 'package:flutter/material.dart';
import 'Quote.dart';

class card_return extends StatelessWidget {


  final Quote quote;
  final Function delete;
  card_return({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            Text(quote.author),
            SizedBox(height: 5,),
            FlatButton.icon(onPressed: delete, icon: Icon(Icons.delete), label: Text("Delete"))
          ],
        ),
      ),
    );
  }
}
