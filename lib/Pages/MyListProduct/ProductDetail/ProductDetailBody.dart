import 'package:flutter/material.dart';
import 'package:easymktf/Class/List.dart';

class ProductDetailBody extends StatelessWidget {
  final List productList;

  ProductDetailBody(this.productList);

  @override
  Widget build(BuildContext context) {
    return new Stack(
        children: <Widget>[
          new Container(
            color: Colors.black54,
            child: new Center(
              child: new Hero(
                tag: 'product-icon-${productList[1].id}',
                child: new Image(
                  image: new AssetImage(productList[1].img),
                  height: 120.0,
                  width: 120.0,
                ),
              ),
            ),
          ),
        ]
    );
  }
}