import 'package:easymktf/Pages/MyListProduct/ProductList/ProductListPage.dart';
import 'package:flutter/material.dart';
import 'package:easymktf/Class/ShoppingList.dart';

class ListRow extends StatelessWidget{

  final ProductDao list;

  ListRow(this.list);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
//          margin: const EdgeInsets.only(left: 0.0, right: 0.0),
        height: 72.0,
        child: new FlatButton(
          onPressed: () => _navigateTo(context, list.id),
          child: new Row(
            children: <Widget>[
              new Image(
                image: new AssetImage(list.img),
                height: 72.0,
                width: 72.0,
              ),
              new Padding(padding: EdgeInsets.only(right: 10.0)),
              _getColumText(list.name, list.totalPrice)
//            planetThumbnail,
            ],
          ),
        ),
      ),
    );
  }


  _navigateTo(context, String id) {
    var route = new MaterialPageRoute(
      builder: (BuildContext context) =>
      new ProductListPage(),
    );
    Navigator.of(context).push(route);
  }

  Widget _getListTile(){
    // Foi adicionado dentro de Container para adicionar altura fixa.
    return new Container(
      height: 72.0,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new FadeInImage.assetNetwork(placeholder: '', image: list.img,fit: BoxFit.cover,width: 95.0,height: 95.0,),
          _getColumText(list.name,list.totalPrice),
        ],
      ),
    );

  }
  Widget _getColumText(tittle,price){
    return new Expanded(
        child: new Container(
          margin: new EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              _getNameWidget(list.name),
              _getPriceWidget(list.totalPrice),
            ],
          ),
        )
    );
  }

  Widget _getNameWidget(String curencyName){
    return new Text(
      curencyName,
      maxLines: 1,
      style: new TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _getPriceWidget(String price){
    return new Text(price,
      style: new TextStyle(color: Colors.grey,fontSize: 10.0),);
  }
}