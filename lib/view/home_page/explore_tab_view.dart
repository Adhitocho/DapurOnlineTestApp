import 'package:carousel_slider/carousel_slider.dart';
import 'package:dapuronline_user/helpers/styles.dart';
import 'package:flutter/material.dart';

class ExploreTabView extends StatelessWidget {
  ExploreTabView({Key? key}) : super(key: key);
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


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
    );
  }
}
