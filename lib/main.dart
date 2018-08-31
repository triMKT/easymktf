//import 'package:flutter/material.dart';
//import 'home_widget.dart';
//
//void main() => runApp(App());
//
//class App extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'My Flutter App',
//      home: Home(),
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_widget.dart';
import 'package:easymktf/Pages/MyListProduct/ProductList/ProductListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home(),
    ProductListPage.tag: (context) => ProductListPage(''),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyMKT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blueGrey, backgroundColor: Colors.white,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}