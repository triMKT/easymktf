import 'package:flutter/material.dart';
import 'package:easymktf/Class/ShoppingList.dart';
import 'package:easymktf/Pages/MyListProduct/ProductList/ProductList.dart';

class ProductListPage extends StatelessWidget {
  static String tag = 'ProductListPage';

  String id;

  ProductListPage(this.id);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => new _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
      appBar: new AppBar(

      ),
        body: new ProductList()
    );
  }
}