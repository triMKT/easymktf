import 'package:flutter/material.dart';
import 'package:easymktf/Class/Product.dart';

class ProductDetailBody extends StatelessWidget {
  final Product product;

  ProductDetailBody(this.product);

  @override
  Widget build(BuildContext context) {
    return new Stack(
        children: <Widget>[
          new Container(
            color: Colors.black54,
            child: new Image(
              image: new AssetImage(product.img),
            ),
          ),
        ]
    );
  }
}