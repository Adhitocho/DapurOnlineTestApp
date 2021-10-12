import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dapuronline_user/view/widgets.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

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

class _HomePageViewState extends State<HomePageView> {
  int _selectedIndex = 0;
  int _counter = 0;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _decrementCounter() {
    setState(() {
      _counter--;
    });
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
      SafeArea(
        child: Column(
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
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
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
                      child:
                      Text('Kategori', textAlign: TextAlign.left, style: menu),
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
                                            image: AssetImage('assets/drink.png')),
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
                                            image: AssetImage('assets/satay.png')),
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
        ),
      ), // Tab Explore
      SafeArea(
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
      ), // Tab Cart
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            children: [
              Column(
                children: [
                  Image(
                      width: 120,
                      height: 120,
                      image:
                      AssetImage('assets/ppitoh.png')), // Profile Picture
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Innaka',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ), // Nama
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '+62 8561234567',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ), // Nomor HP
                ],
              ), // User Info
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'My Profile',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // My Profile
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Change Password',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Change Password
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Payment Settings',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Payment Settings
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'My Voucher',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // My Voucher
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Notification',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Notification
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // About Us
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Contact Us',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ), // Text
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                                color: Colors.black,
                              ),
                            ), // Arrow Icon
                          ],
                        )), // Contact Us
                    SizedBox(
                      height: 15,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.resolveWith(
                                  (states) => const Size(300.0, 40.0)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffECF0F1)),
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30.0))))),
                      child: const Text(
                        'Sign Out',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ), // Preferences
            ],
          ), // Profile
        ),
      ), // Profile Page
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
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ), // _widgetOptions
          ],
        ),
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
        onTap: _onItemTapped,
      ),
    );
  }
}
