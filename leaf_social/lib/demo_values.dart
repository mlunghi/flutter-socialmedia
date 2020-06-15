import 'post_model.dart';
import 'user_model.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "Matteo",
      email: "matteo@gmail.com",
      image: "assets/profile.png",
      followers: 123,
      joined: DateTime(2019, 4, 30),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "Namik",
      email: "namik@gmail.com",
      image: "assets/namik.png",
      followers: 456,
      joined: DateTime(2018, 5, 30),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "Hossam",
      email: "hossam@gmail.com",
      image: "assets/hossam.png",
      followers: 789,
      joined: DateTime(2017, 6, 30),
      posts: 14,
    ),
  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "Saturdays in Holland",
      summary: "Walking around the artsy neighbourhoods of Rotterdam.",
      body: "Dutch cities are full of small artsy spots. I really enjoy exploring them.",
      imageURL: "assets/post.png",
      postTime: DateTime(2019, 6, 29),
      reacts: 123,
      views: 456,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Back in Baku",
      summary: "Chilling at home with the fam.",
      body: "My mom brought home a bunch of really cool furniture. This horse is by far my fave.",
      imageURL: "assets/namik-post.png",
      postTime: DateTime(2019, 4, 13),
      reacts: 321,
      views: 654,
    ),
    PostModel(
      id: "5",
      author: users[2],
      title: "Night at the Garden",
      summary: "Lakers @ Celtics last night",
      body: "I am a huge Celtics fan. Loved seeing them blow out Lebron's Lakers.",
      imageURL: "assets/hossam-post.png",
      postTime: DateTime(2019, 1, 12),
      reacts: 213,
      views: 546,
    ),
  ];
}