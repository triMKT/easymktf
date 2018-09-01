import 'package:flutter/material.dart';
import 'package:easymktf/Class/Product.dart';
import 'package:easymktf/Class/ShoppingList.dart';

class ProductDetailBody extends StatelessWidget {
  final Product product;

  ProductDetailBody(this.product);

  @override
    Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color.fromARGB(255, 66, 165, 245),
        child: new Stack (
          children: <Widget>[
            _getBackground(),
            _getGradient(),
//            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }



    Container _getBackground () {
        return new Container(
            child: new Image.network(product.img,
              fit: BoxFit.cover,
              height: 300.0,
            ),
              constraints: new BoxConstraints.expand(height: 300.0),
            );
    }

  Container _getGradient() {
       return new Container(
//         margin: new EdgeInsets.only(top: 300.0),
//         height: 110.0,
         decoration: new BoxDecoration(
           gradient: new LinearGradient(
             colors: <Color>[
               new Color.fromARGB(255, 18, 68, 144),
               new Color.fromARGB(255, 66, 165, 245)
              ],
              stops: [0.0, 0.9],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
            ),
          ),
        );
      }



  Container _getToolbar(BuildContext context) {
      return new Container(
                 margin: new EdgeInsets.only(
                  top: MediaQuery
                         .of(context)
                      .padding
                      .top),
              child: new BackButton(color: Colors.white),
            );
     }

}