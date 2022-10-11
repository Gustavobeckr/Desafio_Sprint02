// import 'package:flutter/material.dart';
// import 'package:fruit_hub/MyApp/components/PopularCombo.dart';
// import 'package:fruit_hub/MyApp/components/RecommendedCombo.dart';
//
// class ProductInherited extends InheritedWidget {
//   ProductInherited({
//     Key? key,
//     required Widget child,
//   }) : super(key: key, child: child);
//
//   final List<PopularCombo>ProductList = [
//     PopularCombo('assets/images/QuinoaFruit.png',
//         'Quinoa fruit salad'),
//     PopularCombo('assets/images/PratoBerry.png',
//         'Tropical fruit salad'),
//     PopularCombo('assets/images/QuinoaFruit.png',
//         'Quinoa fruit salad'),
//   ];
//
//   void NewProductList(String imageAsset, String nameProduct){
//     ProductList.add(PopularCombo(imageAsset, nameProduct));
//   }
//
//   static ProductInherited of(BuildContext context) {
//     final ProductInherited? result =
//         context.dependOnInheritedWidgetOfExactType<ProductInherited>();
//     assert(result != null, 'No ProductInherited found in context');
//     return result!;
//   }
//
//   @override
//   bool updateShouldNotify(ProductInherited old) {
//     return;
//   }
// }
