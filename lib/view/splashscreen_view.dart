import 'dart:async';
import 'package:dapuronline_user/view/homepage_view.dart';
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
  late final Animation<double> _fadeanimation = CurvedAnimation(
    parent: _fadeController,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    _fadeController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomePageView())));
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: FadeTransition(
            opacity: _fadeanimation,
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