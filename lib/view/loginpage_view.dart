import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dapuronline_user/view/homepage_view.dart';

class LoginPageView extends StatefulWidget {
  @override
  _LoginPageViewState createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final _usernameKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ), // Login
                SizedBox(height: 15),
                Form(
                    key: _usernameKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Harus diisi';
                            }
                            return null;
                          },
                        ),
                      ],
                    )), // Username Form
                SizedBox(height: 15),
                Form(
                    key: _passwordKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Harus diisi';
                            }
                            return null;
                          },
                        ),
                      ],
                    )), // Password Form
              ],
            ),
          ),
          SizedBox(height: 20),
          TextButton(
              onPressed: () {
                if (_usernameKey.currentState!.validate() &&
                    _passwordKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_context) => HomePageView()));
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
