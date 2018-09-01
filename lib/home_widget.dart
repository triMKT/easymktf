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

      //button
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
                child: new UserAccountsDrawerHeader(
                  accountEmail: new Text("beringela@gmail.com"),
                  accountName: new Text("beringela"),
                  currentAccountPicture: new CircleAvatar(
                      backgroundImage: new AssetImage("assets/berinjela.jpg"),
                    ),

                  decoration: new BoxDecoration(
                    color: Colors.black54,
                    gradient: new LinearGradient(
                      colors: <Color>[
                        new Color.fromARGB(255, 18, 68, 144),
                        new Color.fromARGB(255, 66, 165, 245)
                      ],
                      stops: [0.0, 0.9],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.0, 1.0),
                    ),
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
      switch (page){
        case 0:
          this._title_page = 'Recomendado';
          break;
        case 1:
          this._title_page = 'Em Alta';
          break;
        case 2:
          this._title_page = 'Pesquisar';
          break;
        case 3:
          this._title_page = 'Minhas Listas';
          break;
        default:this._title_page = 'Minhas Listas';
      }
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