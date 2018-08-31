import 'package:easymktf/Class/Product.dart';
class PlanetDao {

  static final List<Product> products = [
    const Product(
      id: "1",
      name: "Beringela",
      price: "99",
      img: "assets/berinjela.jpg",
    ),
    const Product(
      id: "2",
      name: "Beringela",
      price: "99",
      img: "assets/berinjela.jpg",
    ),
    const Product(
      id: "3",
      name: "Beringela",
      price: "99",
      img: "assets/berinjela.jpg",
    ),
    const Product(
      id: "4",
      name: "Beringela",
      price: "99",
      img: "assets/berinjela.jpg",
    ),
    const Product(
      id: "1",
      name: "Beringela",
      price: "99",
      img: "assets/berinjela.jpg",
    ),
  ];

  static Product getPlanetById(id) {
    return products
        .where((p) => p.id == id)
        .first;
  }
}