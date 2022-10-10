import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        fixedSize: Size(300, 56),
        backgroundColor: Color.fromRGBO(255, 164, 81, 1),
        textStyle: const TextStyle(fontSize: 16));

    return ListView(
      children:[ Container(
        color: Colors.white,
        width: 411.4,
        height: 683.4,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 411.4,
                  height: 444,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      color: Color.fromRGBO(255, 164, 81, 1)),
                  child: Stack(children: [
                    Padding(
                        padding:
                        const EdgeInsets.fromLTRB(40.0, 130.0, 20.0, 4.0),
                        child: Image.asset(
                          'assets/images/welcome_fruits.png',
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(290, 130, 50, 4),
                      child: Image.asset(
                        'assets/images/welcome_fruit.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(51.7, 400, 51.7, 50),
                  child: ClipOval(
                    child: Container(
                      width: 300,
                      height: 12,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(240, 136, 38, 1)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 200,
                width: 350,
                // color: Colors.red,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get The Freshest Fruit Salad Combo",
                        style: TextStyle(
                          color: Color.fromRGBO(39, 33, 77, 1),
                          fontSize: 17,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 60),
                        child: Text(
                          "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                          style: TextStyle(
                              color: Color.fromRGBO(93, 87, 126, 1),
                              fontSize: 16,
                              fontFamily: 'Nunito-Medium'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: ElevatedButton(
                            style: style,
                            onPressed: () {},
                            child: Text(
                              "Let’s Continue",
                            )),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),],
    );
  }
}