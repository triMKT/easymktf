import 'package:easymktf/Class/Product.dart';
import 'package:easymktf/Class/ShoppingList.dart';


class User {
  final String id;
  final String name;
  final String email;
  final String img;
  final String password;
  final String address;

  const User({this.id, this.name, this.email, this.img, this.address, this.password});

  static final List<ShoppingList> lists = [
    const ShoppingList(
      id: "1",
      name: "LISTA 1",
      totalPrice: "99",
      img: "assets/berinjela.jpg",
    ),
    const ShoppingList(
      id: "2",
      name: "LISTA 2",
      totalPrice: "99",
      img: "assets/mandioca.jpg",
    ),
  ];

//  List<Product> productos = [
//    const Product(
//      id: "1",
//      name: "Beringela",
//      price: "99",
//      img: "assets/berinjela.jpg",
//    ),
//    const Product(
//      id: "1",
//      name: "Beringela",
//      price: "99",
//      img: "assets/berinjela.jpg",
//    ),
//  ];

  static ShoppingList getListById(id) {
    return lists.where((p)=> p.id == id).first;
//    return products.
//        .where((p) => p.id == id)
//        .first;
  }
}