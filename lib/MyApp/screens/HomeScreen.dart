import 'package:flutter/material.dart';
import 'package:fruit_hub/MyApp/App.dart';
import 'package:fruit_hub/MyApp/components/Cards.dart';
import 'package:fruit_hub/MyApp/components/PopularCombo.dart';
import 'package:fruit_hub/MyApp/components/RecommendedCombo.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final double? iconSize;
  late final Color? color;

  // static List<String> nameProduct = [
  //   'Quinoa fruit salad',
  //   'Tropical fruit salad',
  //   'Quinoa fruit salad'
  // ];
  // static List<String> imageAsset = [
  //   'assets/images/QuinoaFruit.png',
  //   'assets/images/PratoBerry.png',
  //   'assets/images/QuinoaFruit.png',
  // ];

  // final List<ItemProduct> itemProduct = List.generate(
  //   nameProduct.length,
  //       (index) =>
  //       ItemProduct('${nameProduct[index]}', '${imageAsset[index]}'),);

  @override
  Widget build(BuildContext context) {
    Map? data = ModalRoute.of(context)?.settings.arguments as Map?;
    String name = data!['name'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.drag_handle_outlined,
                            size: 35,
                          ),
                          Text(
                            "Welcome, $name",
                            style: TextStyle(
                                fontSize: 17, fontFamily: 'Nunito-Medium'),
                          ),
                        ],
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
                        onPressed: () {
                          Navigator.of(context).pushNamed(MyApp.ORDER_LIST);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 390,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 275,
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
                              Wrap(
                                children: [
                                  PopularCombo('assets/images/PratoBerry.png',
                                      'Fruit sald'),PopularCombo('assets/images/PratoBerry.png',
                                      'Fruit sald'),PopularCombo('assets/images/PratoBerry.png',
                                      'Fruit sald'),
                                ],
                              )
                            ],
                          )
                          // .builder(
                          //   scrollDirection: Axis.horizontal,
                          //   itemCount: itemProduct.length,
                          //   itemBuilder: (context, index) {
                          //     return PopularCombo(itemProduct[index].imageAsset, itemProduct[index].nameProduct);
                          //   },),
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
