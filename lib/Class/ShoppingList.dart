import 'package:easymktf/Class/Product.dart';
class ProductDao {

  final String id;
  final String name;
  final String totalPrice;
  final String img;
  final List<Product> products;

  const ProductDao(this.products, {this.id, this.name, this.totalPrice,this.img});



  static Product getProductById(id) {
    return products.where((p)=> p.id == id).first;
  }


}