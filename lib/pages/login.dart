import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  bool _isUsingEmail = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(height: 30),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/google-logo.svg',
                    semanticsLabel: 'Google Logo',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(58, 99, 191, 1),
                  child: SvgPicture.asset(
                    'assets/icons/facebook-logo.svg',
                    semanticsLabel: 'Facebook Logo',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(0, 172, 237, 1),
                  child: SvgPicture.asset(
                    'assets/icons/twitter-logo.svg',
                    semanticsLabel: 'Twitter Logo',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(248, 248, 248, 1),
                  child: SvgPicture.asset(
                    'assets/icons/microsoft-logo.svg',
                    semanticsLabel: 'Microsoft Logo',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(25, 23, 23, 1),
                  child: SvgPicture.asset(
                    'assets/icons/github-logo.svg',
                    semanticsLabel: 'Github Logo',
                    width: 26,
                    height: 26,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(64, 0, 144, 1),
                  child: SvgPicture.asset(
                    'assets/icons/yahoo-logo.svg',
                    semanticsLabel: 'Yahoo Logo',
                    width: 32,
                    height: 32,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Phone"),
                          Switch(
                            value: _isUsingEmail,
                            onChanged: (val) {
                              setState(() {
                                _isUsingEmail = val;
                              });
                            },
                          ),
                          const Text("Email"),
                        ],
                      ),
                      const SizedBox(height: 30),
                      if (_isUsingEmail) ...[
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                        ),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                          obscureText: true,
                        ),
                      ],
                      if (!_isUsingEmail) ...[
                        TextField(
                          controller: _phoneNumberController,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 15,
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    if (_isUsingEmail) {
                      authService.emailSignIn(
                        _emailController.text,
                        _passwordController.text,
                      );
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
