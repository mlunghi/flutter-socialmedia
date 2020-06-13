import 'package:flutter/material.dart';
//import 'common.dart';
import 'user_model.dart';
import 'inherited_user.dart';

class UserDetails extends StatelessWidget {
  final UserModel userData;

  const UserDetails({Key key, @required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InheritedUserModel(
      userData: userData,
      child: Container(
        child: Row(children: <Widget>[_UserImage(), _UserNameAndEmail()]),
      ),
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel userData = InheritedUserModel.of(context).userData;
    final TextStyle nameTheme = Theme.of(context).textTheme.subtitle;
    final TextStyle emailTheme = Theme.of(context).textTheme.body1;
    final int flex = 5;

    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(userData.name, style: nameTheme),
            SizedBox(height: 1.0),
            Text(userData.email, style: emailTheme),
          ],
        ),
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  const _UserImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel userData = InheritedUserModel.of(context).userData;
    return Expanded(
      flex: 1,
      child: CircleAvatar(radius :30, backgroundImage: AssetImage(userData.image)),
    );
  }
}