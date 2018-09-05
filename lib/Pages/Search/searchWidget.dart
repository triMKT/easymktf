import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  SearchState createState()=> SearchState();
}


class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
//          mainAxisAlignment: MainAxisAlignment.center,
        children : <Widget>[
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 10.0),
            child:  new TextField(
              decoration: const InputDecoration(
                  hintText: 'Search',
//                  icon: Icon(Icons.search),
              prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder()
              ),
            ),
          ),

        ],

      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}