import 'package:flutter/material.dart';
import 'package:fruit_hub/MyApp/App.dart';
import 'package:fruit_hub/MyApp/components/BasketCards.dart';

class AddBasket extends StatefulWidget {
  @override
  State<AddBasket> createState() => _AddBasketState();
}

class _AddBasketState extends State<AddBasket> {
  int quantidadeProduto = 1;
  int valorPopProduct = 10;

  final ButtonStyle style = ElevatedButton.styleFrom(
      fixedSize: Size(200, 49),
      backgroundColor: Color.fromRGBO(255, 164, 81, 1),
      textStyle: const TextStyle(fontSize: 16));

  final ButtonStyle GoBackButton = ElevatedButton.styleFrom(
      fixedSize: Size(100, 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 13));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(255, 164, 81, 1),
            child: Column(
              children: [
                SizedBox(
                  height: 270,
                  width: 411.4,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 200),
                        child: TextButton.icon(
                          style: GoBackButton,
                          onPressed: () {
                            Navigator.of(context).pop(MyApp.HOME);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          ),
                          label: Text(
                            'Go back',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 40, 20),
                          child: Image.asset(
                            'assets/images/QuinoaFruit.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  height: 413,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quinoa Fruit Salad',
                          style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'Nunito-Bold',
                              color: Color.fromRGBO(39, 33, 77, 1)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: SizedBox(
                            width: 400,
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 150,
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (quantidadeProduto > 1) {
                                              (quantidadeProduto =
                                                  quantidadeProduto - 1);
                                              (valorPopProduct =
                                                  valorPopProduct - 10);
                                            }
                                          });
                                        },
                                        icon: Icon(Icons.remove),
                                        color: Color.fromRGBO(255, 164, 81, 1),
                                      ),
                                      Text(
                                        '$quantidadeProduto',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromRGBO(39, 33, 77, 1)),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            (quantidadeProduto =
                                                quantidadeProduto + 1);
                                            (valorPopProduct =
                                                valorPopProduct + 10);
                                          });
                                        },
                                        icon: Icon(Icons.add),
                                        color: Color.fromRGBO(255, 164, 81, 1),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/BlackCoin.png',
                                      ),
                                      Text(
                                        '$valorPopProduct,000',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromRGBO(39, 33, 77, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50)),
                          width: 411.4,
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 7, 0, 5),
                          child: Text(
                            "This combo contains:",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Nunito-Medium',
                                color: Color.fromRGBO(39, 33, 77, 1)),
                          ),
                        ),
                        Wrap(
                          children: [
                            BasketCards('Red Quinoa'),
                            BasketCards('Lime'),
                            BasketCards('Honey'),
                            BasketCards('Blueberries'),
                            BasketCards('Mango'),
                            BasketCards('Strawberries'),
                            BasketCards('Fresh Mint'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(50)),
                            width: 411.4,
                            height: 2,
                          ),
                        ),
                        Text(
                          "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                          style: TextStyle(
                              fontFamily: 'Nunito-Light', fontSize: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 18, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: 50,
                                  height: 49,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/images/BasketHeart.png',
                                        fit: BoxFit.fill,
                                      ))),
                              ElevatedButton(
                                style: style,
                                onPressed: () {
                                },
                                child: Text(
                                  "Add To Basket",
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
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
