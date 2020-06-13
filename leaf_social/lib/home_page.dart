import 'package:flutter/material.dart';
import 'single_post.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaf"),
      ),
      body: ListView.builder (
        itemCount: 5, //number of items to display in list
        itemBuilder: (BuildContext content, int index) { 
          return SinglePost(); //function to build each item
        },
      ),
    );
  }
}