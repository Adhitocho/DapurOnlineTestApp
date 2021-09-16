import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('test'),
    );
  }
}

final TextStyle menu =
    TextStyle(fontFamily: 'Roboto', fontSize: 25, color: Colors.black);

final TextStyle subMenu =
    TextStyle(fontFamily: 'Roboto', fontSize: 17, color: Colors.black);

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
