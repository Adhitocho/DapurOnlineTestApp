import 'package:dapuronline_user/view/home_page/cart_tab_view.dart';
import 'package:dapuronline_user/view/home_page/explore_tab_view.dart';
import 'package:dapuronline_user/view/home_page/user_tab_view.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void _onItemTapped(int index) {
    setState(() {
      _tabController.animateTo(index);
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    ExploreTabView(),// Tab Explore
    CartTabView(),
    UserTabView(), // Profile Page
  ];

  @override
  void initState() {
    _tabController = TabController(length: _widgetOptions.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        child: TabBarView(
          controller: _tabController,
          children: _widgetOptions,
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
        currentIndex: _tabController.index,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
