import 'package:flutter/material.dart';
import 'package:fruit_hub/screens/AddToBasket.dart';

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
      home: AddBasket(),
    );
  }
}
