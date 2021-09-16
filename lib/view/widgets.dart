import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget {
  final TextStyle robotoShadow =
      TextStyle(fontFamily: 'Roboto', shadows: <Shadow>[
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 3.0,
      color: Colors.grey,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('test'),
    );
  }
}
