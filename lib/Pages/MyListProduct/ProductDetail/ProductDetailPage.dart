import 'package:flutter/material.dart';
import 'package:easymktf/Class/Product.dart';
import 'package:easymktf/Class/ShoppingList.dart';
import 'package:easymktf/Pages/MyListProduct/ProductDetail/ProductDetailAppBar.dart';
import 'package:easymktf/Pages/MyListProduct/ProductDetail/ProductDetailBody.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage(String id): product = ShoppingList.getProductById(id);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new DetailAppBar(),
          new ProductDetailBody(product),
        ],
      ),
    );
  }
}