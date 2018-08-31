import 'package:easymktf/Pages/MyListProduct/ProductListPage.dart';
import 'package:flutter/material.dart';

class MyLists extends StatefulWidget{
  _MyListsPageState createState()=> _MyListsPageState();
}


class _MyListsPageState extends State<MyLists> {
  @override
  Widget build(BuildContext context) {

    String title = 'Listas';

    return new MaterialButton(
        onPressed:(){
        Navigator.of(context).pushNamed(ProductListPage.tag);
        }
    );
  }
}