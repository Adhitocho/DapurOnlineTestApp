import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dapuronline_user/view/widgets.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final CarouselController _controller = CarouselController();

  final List<Widget> highlights = [
    Container(
      width: 350,
      height: 157,
      color: Colors.yellow,
      child: Image.asset(
        'assets/nasikebuli.jpg',
        fit: BoxFit.fill,
      ),
    ),
    Container(
      width: 350,
      height: 157,
      color: Colors.yellow,
      child: Image.asset(
        'assets/pisangijo.jpg',
        fit: BoxFit.fill,
      ),
    ),
    Container(
      width: 350,
      height: 157,
      color: Colors.yellow,
      child: Image.asset(
        'assets/getuklindri.jpg',
        fit: BoxFit.fill,
      ),
    ),
  ]; // Gambar2 untuk highlights

  int _selectedIndex = 0;
  int _counter = 0;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _decrementCounter() {
    if (_counter != 0) {
      setState(() {
      _counter--;
    });
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Ini isian setiap tab yang ada di Bottom Navigation Bar
    List<Widget> _widgetOptions = <Widget>[
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 50,
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xffD0D0D0),
                  filled: true,
                  prefixIcon: Icon(Icons.youtube_searched_for),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  labelText: 'Search'),
            ),
          ), // Search Bar
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 350,
            height: 157,
            child: CarouselSlider(
              items: highlights,
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                viewportFraction: 1,
              ),
            ),
          ), // Highlights
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              width: 350,
              child: Column(
                children: [
                  Container(
                    width: 350,
                    alignment: Alignment.centerLeft,
                    child: Text('Kategori',
                        textAlign: TextAlign.left, style: menu),
                  ), // Teks Kategori
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/rice.png')),
                                      border: Border.all(color: Colors.amber),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Main', style: subMenu),
                                  )
                                ],
                              ),
                            ), // Main Course
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icecream.png')),
                                        border: Border.all(color: Colors.amber),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text('Dessert', style: subMenu),
                                    )
                                  ],
                                ),
                              ),
                            ), // Dessert
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/drink.png')),
                                      border: Border.all(color: Colors.amber),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Beverages', style: subMenu),
                                  )
                                ],
                              ),
                            ), // Beverages
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/cookies.png')),
                                      border: Border.all(color: Colors.amber),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Snacks', style: subMenu),
                                  )
                                ],
                              ),
                            ), // Snacks
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/bread.png')),
                                        border: Border.all(color: Colors.amber),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text('Pastry', style: subMenu),
                                    )
                                  ],
                                ),
                              ),
                            ), // Pastry
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/satay.png')),
                                      border: Border.all(color: Colors.amber),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Traditional', style: subMenu),
                                  )
                                ],
                              ),
                            ), // Traditional
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ), // Tab Explore
      Column(
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
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
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
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Qty:  ',
                                      textAlign: TextAlign.left,
                                      style: subMenu),
                                  Container(
                                     padding: const EdgeInsets.only(left: 10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all()
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: _incrementCounter,
                                            icon: Icon(Icons.add)), // tambah
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all()
                                          ),
                                          child: Text('$_counter', style: subMenu)),
                                        IconButton(
                                            onPressed: _decrementCounter,
                                            icon:
                                                Icon(Icons.remove)), // kurang
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ), // Tab Cart
      Column(
        children: [Text('Belom ada, say')],
      ), // Tab User
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: const Text(
              'Dapur Online',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Fratto',
                fontSize: 80,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ), // _widgetOptions
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.architecture_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (_index) => _onItemTapped(_index),
      ),
    );
  }
}
