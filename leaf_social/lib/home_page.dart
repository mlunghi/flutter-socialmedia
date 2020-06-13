import 'package:flutter/material.dart';
import 'demo_values.dart';
import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaf"),
      ),
      body: ListView.builder (
        itemCount: 3, //number of items to display in list
        itemBuilder: (BuildContext content, int index) { 
          return PostCard(postData: DemoValues.posts[index],); //function to build each item
        },
      ),
    );
  }
}