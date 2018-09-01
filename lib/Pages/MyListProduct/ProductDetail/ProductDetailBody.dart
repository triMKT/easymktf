import 'package:flutter/material.dart';
import 'package:easymktf/Class/Product.dart';
import 'package:easymktf/Class/ShoppingList.dart';

class ProductDetailBody extends StatelessWidget {
  final Product product;

  ProductDetailBody(this.product);

  @override
  Widget build(BuildContext context) {
    return new Stack(
        children: <Widget>[
          new Container(
            color: Colors.black54,
            child: new Center(
              child: new Hero(
                tag: 'product-icon-${product.name}',
                child: new Image(
                  image: new AssetImage(product.img),
                  height: 300.0,
                  width: 300.0,
                ),
              ),
            ),
          ),
        ]
    );
  }
}