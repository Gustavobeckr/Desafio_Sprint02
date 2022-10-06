import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  late final double? iconSize;
  late final Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white30,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 60, 15, 30),
              child: SizedBox(
                width: 365,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.drag_handle_outlined,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                      child: Text(
                        "Welcome, NameController",
                        style: TextStyle(
                            fontSize: 17, fontFamily: 'Nunito-Medium'),
                      ),
                    ),
                    IconButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      splashColor: Colors.red,
                      iconSize: 35,
                      alignment: AlignmentDirectional.topEnd,
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Color.fromRGBO(255, 164, 81, 1),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(245, 245, 245, 0.4),
                        filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(245, 245, 245, 0.4),
                            width: 0,
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(Icons.search),
                        ),
                        hintText: 'Search for fruit salad combos',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 245, 245, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 60,
                    width: 45,
                    child: Icon(
                      Icons.view_list_sharp,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Color.fromRGBO(247, 245, 245, 0.4),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Wrap(
                    children: [
                      Cards('All'),
                      Cards('Salad Combo'),
                      Cards('Berry Combo'),
                      Cards('Mango Berry'),
                      Cards('Honey lime combo'),
                      Cards('Berry mango combo'),
                    ],
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

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
            border: Border.all(
              color: Colors.black12,
            width: 1)),
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
