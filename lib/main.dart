import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Authentication(),
    );
  }
}

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        fixedSize: Size(300, 56),
        backgroundColor: Color.fromRGBO(255, 164, 81, 1),
        textStyle: const TextStyle(fontSize: 16));

    return Container(
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
                      padding: const EdgeInsets.fromLTRB(40.0, 115.0, 20.0, 0),
                      child: Image.asset(
                        'assets/images/cesta_de_frutas.png',
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
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(78, 402, 51.7, 0.0),
                child: ClipOval(
                  child: Container(
                    width: 25,
                    height: 13,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(290, 402, 51.7, 0.0),
                child: ClipOval(
                  child: Container(
                    width: 25,
                    height: 13,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(318, 397, 51.7, 0.0),
                child: ClipOval(
                  child: Container(
                    width: 25,
                    height: 10,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(240, 136, 38, 1)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              height: 200,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What is your firstname?",
                    style: TextStyle(
                      color: Color.fromRGBO(39, 33, 77, 1),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  // TextField(
                  //
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: Text(
                        "Start Ordering",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
