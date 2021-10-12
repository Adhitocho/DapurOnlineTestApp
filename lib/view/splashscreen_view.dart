import 'dart:async';
import 'package:dapuronline_user/view/loginpage_view.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends StatefulWidget {
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView>
    with TickerProviderStateMixin {

  late final AnimationController _fadeController = AnimationController(
    duration: Duration(milliseconds: 800),
    vsync: this,
  );
  late final Animation<double> _fadeAnimation = CurvedAnimation(
    parent: _fadeController,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    _fadeController.forward().then((value) {
      // Janngan taro sesuatu yg bukan tampilan didalm build, pindahkan ke init jika memang harus di trigger saat pertama kali screen dirender
      Timer(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPageView()));
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Container(
              width: 300,
              height: 230,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    left: 15,
                    child: Text(
                      'Dapur',
                      style: TextStyle(
                          fontFamily: 'Fratto',
                          fontSize: 150,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 15,
                    child: Text(
                      'Online',
                      style: TextStyle(
                          fontFamily: 'Fratto',
                          fontSize: 150,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
