import 'package:easymktf/Class/Product.dart';
class ShoppingList {

  final String id;
  final String name;
  final String totalPrice;
  final String img;

  const ShoppingList({this.id, this.name, this.totalPrice,this.img});

  static final  List<Product> products= [
    const Product(
      id: "1",
      name: "Beringela",
      price: "99",
      img: "assets/berinjela.jpg",
    ),
    const Product(
      id: "2",
      name: "mandioca",
      price: "99",
      img: "assets/mandioca.jpg",
    ),
    const Product(
      id: "3",
      name: "Beringela",
      price: "99",
      img: "assets/berinjela.jpg",
    ),
  ];

  static Product getProductById(id) {
    return products.where((p)=> p.id == id).first;
  }
}