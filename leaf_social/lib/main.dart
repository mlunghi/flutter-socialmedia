import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(Leaf());

class Leaf extends StatelessWidget {

  const Leaf({Key key}) : super(key:key);

 

  @override
  Widget build(BuildContext content) {
     SystemChrome.setPreferredOrientations([
         DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
    ]);
    return MaterialApp (
      theme: ThemeData (
        primaryColor: Colors.green,
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}