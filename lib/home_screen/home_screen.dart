import 'package:ecommerce/checkout.dart/checkout.dart';
import 'package:ecommerce/profile/profile.dart';
import 'package:ecommerce/setting/settings.dart';
import 'package:ecommerce/widgets/filter/filter.dart';
import 'package:ecommerce/widgets/hotdeals/hot_deals.dart';
import 'package:ecommerce/widgets/hotdeals/hotdealsgrid.dart';
import 'package:ecommerce/widgets/search/search_bar.dart';
import 'package:ecommerce/widgets/trendy/trendy_deals.dart';
import 'package:ecommerce/widgets/trendy/trendy_dealsgrid.dart';
import 'package:ecommerce/widgets/weekly/weekly_deals.dart';
import 'package:ecommerce/widgets/weekly/weekly_dealsgrid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onBottomBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            searchhome(),
            SizedBox(height: 15),
            Filter(),
            HotDeals(),
            Hotdealsgrid(),
            SizedBox(height: 10),
            WeeklyDeals(),
            WeeklyDealsgrid(),
            SizedBox(height: 15),
            TrendyDeals(),
            TrendyDealsgrid(),
            SizedBox(height: 15),
            Checkout(cartItems: []),
            Profile(),
            Settings(),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomBarTapped,
        selectedItemColor: const Color.fromARGB(255, 30, 74, 177),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
