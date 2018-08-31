import 'package:flutter/material.dart';
import 'package:easymktf/Pages/MyListProduct/ProductDetail/ProductDetailAppBar.dart';
import 'package:easymktf/Pages/MyListProduct/ProductDetail/ProductDetailBody.dart';

class ProductDetailPage extends StatefulWidget {
  final String id;

  ProductDetailPage({Key key, this.id}) : super(key: key);

  @override
  _ProductDetailPageState createState() => new _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new DetailAppBar(),
          new ProductDetailBody()
        ],
      ),
    );
  }

//  Widget _buildProfileHeader(User user) {
//    return new Container(
//      margin: new EdgeInsets.only(top: 16.0),
//      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        mainAxisSize: MainAxisSize.min,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          _buildUserIdentity(user),
//          new Padding(
//            child: _buildUserInfo(user),
//            padding: new EdgeInsets.only(top: 24.0, bottom: 8.0),
//          ),
//          new Divider()
//        ],
//      ),
//    );
//  }
//
//  Widget _buildUserIdentity(User user) {
//    return new Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        mainAxisSize: MainAxisSize.max,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          new Padding(
//            child: new CircleAvatar(
//              radius: 40.0,
//              backgroundColor: Colors.grey,
//              backgroundImage: user.avatarUrl != null ? new NetworkImage(
//                  user.avatarUrl) : null,
//            ),
//            padding: const EdgeInsets.only(right: 16.0),
//          ),
//          new Column(
//            children: <Widget>[
//              new Padding(
//                padding: const EdgeInsets.only(bottom: 4.0),
//                child: new Text(
//                    user.name != null ? user.name : '',
//                    style: new TextStyle(fontWeight: FontWeight.bold)
//                ),
//              ),
//              new Text(user.login != null ? user.login : '')
//            ],
//          )
//        ]
//    );
//  }
}