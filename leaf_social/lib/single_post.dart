import 'package:flutter/material.dart';
import 'demo_values.dart';

class SinglePost extends StatelessWidget {

  const SinglePost({Key key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaf"),
      ),
      body: Image.asset(DemoValues.postImage),
    );
  }

}