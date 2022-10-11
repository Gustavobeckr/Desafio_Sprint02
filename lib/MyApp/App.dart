import 'package:flutter/material.dart';
import 'package:fruit_hub/MyApp/data/ProductInherited.dart';
import 'package:fruit_hub/MyApp/screens/AddToBasket.dart';
import 'package:fruit_hub/MyApp/screens/AuthenticationScreen.dart';
import 'package:fruit_hub/MyApp/screens/HomeScreen.dart';
import 'package:fruit_hub/MyApp/screens/OrderComplete.dart';
import 'package:fruit_hub/MyApp/screens/OrderList.dart';
import 'package:fruit_hub/MyApp/screens/WelcomeScreen.dart';

class MyApp extends StatelessWidget {

  static const FIRST_SCREEN = 'first_screen';
  static const SECOND_SCREEN = 'second_screen';
  static const HOME = '/';
  static const ADD_BASKET = '/add_basket';
  static const ORDER_LIST = '/order_list';
  static const ORDER_COMPLETE = '/order_complete';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: FIRST_SCREEN,
      routes: {
        FIRST_SCREEN: (context) => WelcomeScreen(),
        SECOND_SCREEN: (context) => Authentication(),
        HOME: (context) => HomeScreen(),
        ADD_BASKET: (context) => AddBasket(),
        ORDER_LIST: (context) => OrderList(),
        ORDER_COMPLETE: (context) => OrderComplete(),
      }
    );
  }
}