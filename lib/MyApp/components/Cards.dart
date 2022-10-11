import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String card;

  const Cards(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black12, width: 1)),
        height: 40,
        child: TextButton(
          onPressed: () {},
          child: Text(
            "$card",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontFamily: 'Nunito-Medium'),
          ),
        ),
      ),
    );
  }
}