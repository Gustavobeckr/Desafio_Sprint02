// import 'package:flutter/material.dart';
// import 'package:fruit_hub/MyApp/components/ItemBasket.dart';
//
// class ProductInherited extends InheritedWidget {
//   ProductInherited({
//     Key? key,
//     required Widget child,
//   }) : super(key: key, child: child);
//
//   final List<ItemBasket>ProductList = [
//     ItemBasket("assets/images/PratoBerry.png", 'Quinoa fruit salad', 4, 40),
//     ItemBasket('assets/images/QuinoaFruit.png', 'Melon fruit salad', 2, 20),
//   ];
//
//   void NewProductList(String imageAsset, String nameProduct, int quantidadeProduto, int valorProduto){
//     ProductList.add(ItemBasket(imageAsset, nameProduct, quantidadeProduto, valorProduto));
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
//     return old.ProductList.length != ProductList.length;
//   }
// }
