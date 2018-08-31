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

  static final List<ProductDao> lists = [
    const ProductDao(
      id: "1",
      name: "toma no cu",
      totalPrice: "99",
      img: "assets/berinjela.jpg"
    ),
    const ProductDao(
      id: "2",
      name: "toma no cu",
      totalPrice: "99",
      img: "assets/berinjela.jpg",
    ),
  ];


  static ProductDao getListById(id) {
    return lists.where((p)=> p.id == id).first;
//    return products.
//        .where((p) => p.id == id)
//        .first;
  }
}