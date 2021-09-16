import 'package:flutter/material.dart';
import 'package:dapuronline_user/view/widgets.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.grey,
        child: Text(
          'Test dulu, bang',
          style: robotoShadow,
        ),
      ),
    ));
  }
}
