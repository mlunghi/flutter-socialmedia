
import 'package:flutter/material.dart';
import 'demo_values.dart';
import 'single_post.dart';
import 'themes.dart';
import 'single_post.dart';
import 'post_model.dart';
import 'inherited_post.dart';
import 'user_details.dart';

class PostCard extends StatelessWidget {
  final PostModel postData;

  const PostCard({Key key, @required this.postData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = 6 / 3;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return SinglePost();
        }));
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Card(
          elevation: 2,
          child: Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(1.0),
            
            // I created it here!
            child: InheritedPostModel(
              postData: postData,
              child: Column(
                children: <Widget>[
                  _Post(),
                  Divider(color: Colors.grey),
                  _PostDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(children: <Widget>[_PostImage(), _PostTitleAndSummary()]),
    );
  }
}

class _PostTitleAndSummary extends StatelessWidget {
  const _PostTitleAndSummary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleTheme = Theme.of(context).textTheme.title;
    final TextStyle summaryTheme = Theme.of(context).textTheme.body1;
    final PostModel postData = InheritedPostModel.of(context).postData;
    final String title = postData.title;
    final String summary = postData.summary;

    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(title, style: titleTheme),
            SizedBox(height: 2.0),
            Text(summary, style: summaryTheme),
          ],
        ),
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    return Expanded(flex: 2, child: Image.asset(postData.imageURL));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Row(
      children: <Widget>[
        Expanded(flex: 3, child: UserDetails(userData: postData.author)),
        //Expanded(flex: 1, child: PostStats()),
      ],
    );
  }
}