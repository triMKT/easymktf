import 'package:flutter/material.dart';
import 'package:easymktf/Pages/MyListProduct/myListsWidget.dart';
import 'package:easymktf/Pages/recommendedWidget.dart';
import 'package:easymktf/Pages/trending.dart';
import 'package:easymktf/Pages/searchWidget.dart';


class Home extends StatefulWidget {
  static String tag = 'homePages';

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;
  PageController _pageController;
  var _title_page = null;


  Widget homePages(int currentIndex){
    switch (currentIndex){
      case 0:
        this._title_page = 'Recomendado';
        return Recommended();
      case 1:
        this._title_page = 'Em Alta';

        return Trending();
      case 2:
        this._title_page = 'Pesquisar';
        return Search();
      case 3:
        this._title_page = 'Minhas Listas';
        return MyLists();
        break;
        default:return Recommended();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title_page),
      ),


      body: homePages(_pageIndex),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20.0,
        type: BottomNavigationBarType.fixed,
        onTap:navigationTapped,
        currentIndex: _pageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon( Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.whatshot),
            title: Text('Em Alta'),
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.search),
            title: Text('Pesquisar'),
          ),
          BottomNavigationBarItem(
              icon: Icon( Icons.view_list),
              title: Text('Listas')
          )
        ],
      ),

      //Drawer
      drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new Container(
                height: 180.0,
                child: new DrawerHeader(
                  padding: new EdgeInsets.all(0.0),
                  decoration: new BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: new Center(
                    child: new Hero(
                    tag: 'hero',
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                          child: CircleAvatar(
                          radius: 72.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/berinjela.jpg'),
                        ),
                      ),
                    )
                  ),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.favorite),
                  title: new Text('Favoritos'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed(Home.tag);
                  }
              ),
              new ListTile(
                  leading: new Icon(Icons.perm_identity),
                  title: new Text('Conta'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed(Home.tag);
                  }
              ),
              new ListTile(
                  leading: new Icon(Icons.exit_to_app),
                  title: new Text('Sign Out'),
                  onTap: () {
                    Navigator.pop(context);
                  }
              ),
              new Divider(),
              new ListTile(
                  leading: new Icon(Icons.airline_seat_individual_suite),
                  title: new Text('Preferencias'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed(Home.tag);
                  }
              ),
              new ListTile(
                  leading: new Icon(Icons.help_outline),
                  title: new Text('Ajuda'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed(Home.tag);
                  }
              ),
              new ListTile(
                  leading: new Icon(Icons.share),
                  title: new Text('Compartilhar'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed(Home.tag);
                  }
              ),
            ],
          )
      )
    );
  }


  void navigationTapped(int page) {
    setState(() {
      _pageIndex = page;
    });
//    _pageController.animateToPage(
//      page,
//      duration: Duration(milliseconds: 100),
//      curve: Curves.easeIn,
//    );
  }

  @override
  void initState() {
    super.initState();
//    _pageController = new PageController();
    this._title_page = 'Home';
  }
//
//  @override
//  void dispose() {
//    super.dispose();
//    _pageController.dispose();
//  }
}