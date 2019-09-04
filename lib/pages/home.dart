import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Home extends StatelessWidget {
  final String _defaultUserImageUrl =
      'https://i0.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: StreamBuilder(
          stream: authService.user,
          builder: (context, snapshot) {
            FirebaseUser user = snapshot.data;

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_defaultUserImageUrl),
                  ),
                  title: Text(user.displayName ?? 'Name'),
                  subtitle: Text(user.email ?? 'Email'),
                ),
                Text(
                    "Signed in successfully using ${user.providerData[0].providerId}"),
                RaisedButton(
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  child: const Text('SIGN OUT'),
                  onPressed: authService.signOut,
                ),
              ],
            );
          }),
    );
  }
}
