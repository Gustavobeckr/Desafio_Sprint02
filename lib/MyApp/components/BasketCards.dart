import 'package:flutter/material.dart';

class BasketCards extends StatelessWidget {
  late final String nameCard;

  BasketCards(String this.nameCard);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 2.5, 8),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(247, 245, 245, 0.8),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: Color.fromRGBO(247, 245, 245, 0.8), width: 1)),
        height: 35,
        child: TextButton(
          onPressed: () {},
          child: Text(
            "$nameCard",
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontFamily: 'Nunito-Medium'),
          ),
        ),
      ),
    );
  }
}