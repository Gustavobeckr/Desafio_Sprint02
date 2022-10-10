import 'package:flutter/material.dart';
import 'package:fruit_hub/components/ItemBasket.dart';


class OrderList extends StatefulWidget {
  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  final ButtonStyle style = ElevatedButton.styleFrom(
      fixedSize: Size(190, 49),
      backgroundColor: Color.fromRGBO(255, 164, 81, 1),
      textStyle: const TextStyle(fontSize: 16));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[SizedBox(
          width: double.infinity,
          height: 683.4,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 164, 81, 1),
                ),
                width: 411.4,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    textAlign: TextAlign.center,
                    'My Basket',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Nunito-Medium'),
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                decoration: BoxDecoration(color: Colors.white),
                width: double.infinity,
                height: 440,
                child: ListView(
                  children: [
                    ItemBasket(),
                  ],
                ),
              ),
              Container(
                color: Color.fromRGBO(237, 228, 228, 0.1),
                width: double.maxFinite,
                height: 123,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 8, 5, 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontFamily: 'Nunito-Medium',
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 5, 8),
                                  child: Image.asset(
                                    'assets/images/BlackCoin.png',
                                  ),
                                ),
                                Text(
                                  '10,000',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(39, 33, 77, 1)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                          style: style,
                          onPressed: () {},
                          child: Text(
                            "Checkout",
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),]
      ),
    );
  }
}
