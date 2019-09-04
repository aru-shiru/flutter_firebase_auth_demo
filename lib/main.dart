import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/login.dart';
import 'auth.dart';

void main() => runApp(MyApp());

final AuthService authService = AuthService();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            child: StreamBuilder(
              stream: authService.user,
              builder: (context, snap) => snap.hasData ? Home() : Login(),
            ),
          ),
        ),
      ),
    );
  }
}
