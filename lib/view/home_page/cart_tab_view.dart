import 'package:dapuronline_user/helpers/styles.dart';
import 'package:flutter/material.dart';

class CartTabView extends StatefulWidget {
  const CartTabView({Key? key}) : super(key: key);

  @override
  _CartTabViewState createState() => _CartTabViewState();
}

class _CartTabViewState extends State<CartTabView> {

  int _counter = 0;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _decrementCounter() {
    setState(() {
      if(_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 350,
            child: Text(
              'Keranjang Belanja',
              style: menu,
              textAlign: TextAlign.left,
            ),
          ), // Teks Keranjang Belanja
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 350,
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/nasikebuli.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nasi Kebuli Kasihan',
                          style: subMenu,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Qty:',
                                textAlign: TextAlign.left, style: subMenu),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: _incrementCounter,
                                    child: Icon(Icons.add, size: 15,)), // tambah
                                Text('$_counter', style: subMenu),
                                TextButton(
                                    onPressed: _decrementCounter,
                                    child:
                                    Icon(Icons.remove, size: 15,)), // kurang
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
