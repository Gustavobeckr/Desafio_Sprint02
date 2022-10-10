
import 'package:flutter/material.dart';
import 'package:fruit_hub/components/Cards.dart';
import 'package:fruit_hub/components/PopularCombo.dart';
import 'package:fruit_hub/components/RecommendedCombo.dart';
import 'package:fruit_hub/main.dart';

class HomeScreen extends StatelessWidget {
  late final double? iconSize;
  late final Color? color;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 20),
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
                          backgroundColor:
                          MaterialStateProperty.all(Colors.red),
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
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(245, 245, 245, 0.4),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none),
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
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: 365,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Color.fromRGBO(245, 245, 245, 0.1),
                            width: 10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                          child: Text(
                            "Recommended Combo",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito-Medium',
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 165,
                          width: 365,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Wrap(
                                children: [
                                  RecommendedCombo(
                                      'assets/images/Prato_Lime.png',
                                      'Honey lime combo'),
                                  RecommendedCombo(
                                      'assets/images/PratoBerry.png',
                                      'Berry mango combo'),
                                  RecommendedCombo(
                                      'assets/images/Prato_Lime.png',
                                      'Honey lime combo'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 365,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 270,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hottest",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Nunito-Medium',
                                  color: Colors.black),
                            ),
                            Text(
                              "Popular",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Nunito-Medium',
                                  color: Colors.black),
                            ),
                            Text(
                              "New Combo",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Nunito-Medium',
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 165,
                        width: 365,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Wrap(children: [
                                PopularCombo('assets/images/QuinoaFruit.png','Quinoa fruit salad'),
                                PopularCombo('assets/images/PratoBerry.png', 'Tropical fruit salad'),
                                PopularCombo('assets/images/QuinoaFruit.png', 'Quinoa fruit salad')
                              ]),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}