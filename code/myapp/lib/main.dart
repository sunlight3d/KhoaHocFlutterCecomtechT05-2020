import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          '/signup': (BuildContext context) => SignupPage()
        },
    );
  }
}



