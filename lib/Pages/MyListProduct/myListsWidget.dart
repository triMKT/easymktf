import 'package:flutter/material.dart';
import 'package:easymktf/Pages/MyListProduct/listList.dart';

class MyLists extends StatefulWidget{
  MyListsState createState()=> MyListsState();
}


class MyListsState extends State<MyLists> {
  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
        body: new listList(),
    );
  }
}