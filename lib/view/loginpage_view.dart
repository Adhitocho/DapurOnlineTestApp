import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dapuronline_user/view/homepage_view.dart';

class LoginPageView extends StatefulWidget {
  @override
  _LoginPageViewState createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              // Mediaquery untuk mengetahui besar size screen
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15), // Username Form
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text('Username'),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Harus diisi';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            //  Disini ada toggle visibility
                            suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            label: Text('Password'),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Harus diisi';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_context) => HomePageView()));
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
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
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
