import 'package:dapuronline_user/helpers/styles.dart';
import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('test'),
    );
  }
}

class WidgetsPageSFul extends StatefulWidget {
  const WidgetsPageSFul({Key? key}) : super(key: key);

  @override
  State<WidgetsPageSFul> createState() => _WidgetsPageSFulState();
}

class _WidgetsPageSFulState extends State<WidgetsPageSFul> {
  int _counter = 0;

  increment() {
    setState(() {
      _counter++;
    });
  }

  decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 70,
        height: 30,
        child: Row(
          children: [
            FloatingActionButton(onPressed: increment(), child: Icon(Icons.add)), // tambah
            Text('$_counter', style: subMenu),
            FloatingActionButton(onPressed: decrement(), child: Icon(Icons.remove)), // kurang
          ],
        ),
      ),
    );
  }
}
