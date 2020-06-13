import 'package:flutter/material.dart';
import 'demo_values.dart';

class SinglePost extends StatelessWidget {
  const PostCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5/2,
      child: Card (child: Column(children: <Widget>[_Post(), _PostDetails()])),
      );
  }
}


class _Post extends StatelessWidget {
  const _Post({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(children: <Widget>[_PostIMage(), _PostTitleAndSummary()],)
    );
  }
}
