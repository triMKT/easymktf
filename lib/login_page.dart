import 'dart:async';
import 'package:easymktf/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:easymktf/Pages/progress_button/reveal_progress_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'loginPage';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

GoogleSignIn _googleSignIn = new GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

Future<Null> _handleSignIn() async {
  try {
    await _googleSignIn.signIn();
    print("sign in" + _googleSignIn.currentUser.displayName);
  } catch (error) {
    print(error);
  }
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 55.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
//      initialValue: 'alucard@gmail.com',
      decoration: InputDecoration(
        labelText: 'Username',
        //hintText: 'exemple@email.com',
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(),
      ),
    );

    final password = TextFormField(
      autofocus: false,
//      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
       //hintText: '********',
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(/*borderRadius: BorderRadius.circular(32.0)*/),
      ),
    );

    final loginButton = RevealProgressButton();

    final loginGoogle = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            //https://flutter.io/cookbook/navigation/navigation-basics/
//          //https://medium.com/@najeira/how-to-handle-screen-transitions-in-flutter-b39dcb2675f
            //NAVIGATOR É UM NAVEGADOR DE JANELAS
            _handleSignIn();
            Navigator.of(context).pushNamed(Home.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
        textAlign: TextAlign.right,
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 16.0),
            password,
            SizedBox(height: 4.0),
            forgotLabel,
            SizedBox(height: 14.0),
            loginGoogle,
            SizedBox(height: 14.0),
            loginButton
          ],
        ),
      ),
    );
  }
}
