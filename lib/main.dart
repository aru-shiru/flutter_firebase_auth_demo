import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool loggedIn = false;

    return MaterialApp(
      title: 'Flutter Firebase Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Firebase Auth Demo'),
        ),
        body: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: loggedIn ? Home() : Login(),
          ),
        ),
      ),
    );
  }
}
