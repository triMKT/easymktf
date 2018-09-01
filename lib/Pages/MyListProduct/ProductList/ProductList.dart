import 'package:flutter/material.dart';
import 'package:easymktf/Pages/MyListProduct/ProductList/ProductRow.dart';
import 'package:easymktf/Class/ShoppingList.dart';
import 'package:easymktf/Class/User.dart';

class ProductList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
        child : ListView.builder(
          itemCount: ProductDao.products.length,
//      padding: new EdgeInsets.only(top: 5.0),
          itemBuilder: (_, index) => new ProductRow(ProductDao.products[1]),
//        itemBuilder: (context, index){
//          return _items[index];
        )
    );
  }
//  @override
//  void initState() {
//    loadItems();
//  }

//  Widget _getListViewWidget(){
//
//    return list;
//  }

//  loadItems() async{
//    List result = await repository.loadItems();
//    setState(() {
//      result.forEach((item) {
//
//        var Item = new ItemMyList(
//          item['url_img'],
//          item['name'],
//          item['price'],
//        );
//        _items.add(Item);
//      });
//    });
//  }
}
