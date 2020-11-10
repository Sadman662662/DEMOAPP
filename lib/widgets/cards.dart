import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Image.asset(
              'assets/images/1.jpg',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
