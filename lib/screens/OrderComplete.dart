import 'package:flutter/material.dart';

class OrderComplete extends StatelessWidget {
  final ButtonStyle style = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    fixedSize: Size(200, 56),
    backgroundColor: Color.fromRGBO(252, 246, 240, 1),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.white,
            width: 411.4,
            height: 683.4,
          ),
          Container(
            width: 300,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/OrderTaken.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Order Taken ',
                    style: TextStyle(
                        fontSize: 33,
                        fontFamily: 'Nunito-Medium',
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                  child: Text(
                    "  Your order have been taken and is \n                being attended to",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito-Medium',
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: Text(
                    "Continue shopping",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Nunito-Medium',
                      color: Color.fromRGBO(255, 164, 81, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}