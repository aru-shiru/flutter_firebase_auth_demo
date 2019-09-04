import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String _defaultUserImageUrl =
      'https://i0.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_defaultUserImageUrl),
            ),
            title: Text('Name'),
            subtitle: Text('Email'),
          ),
          Text("Signed in successfully using {Provider}"),
          RaisedButton(
            color: Colors.redAccent,
            textColor: Colors.white,
            child: const Text('SIGN OUT'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
