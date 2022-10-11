import 'package:flutter/material.dart';
import 'package:fruit_hub/MyApp/App.dart';

class PopularCombo extends StatelessWidget {
  final image;
  final String name;
  int ValorPopProduct = 10;

  PopularCombo(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(255, 252, 242, 1)),
        width: 160,
        height: 162,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 160,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                    child: Image.asset('$image'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 15, 66),
                    child: Image.asset(
                      'assets/images/IconHeart.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 155,
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 17,
                    child: Text(
                      "$name",
                      style:
                          TextStyle(fontFamily: "Nunito-Medium", fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Image.asset(
                            'assets/images/CoinIcon.png',
                          ),
                        ),
                        Text(
                          "$ValorPopProduct,000",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 164, 81, 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 6, 0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(MyApp.ADD_BASKET);
                            },
                            icon: Icon(Icons.add),
                            color: Color.fromRGBO(255, 164, 81, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
