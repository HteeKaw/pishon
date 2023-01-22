import 'package:flutter/material.dart';
import 'package:pishon/components/bottom_navigation_bar_items.dart';
import 'package:pishon/screens/product_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _productPages = [
    const ProductHomePage(),
    const Text('Second Page'),
    const Text('Third Page'),
    const Text('Fourth Page'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PS Myanmar'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _productPages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: bottomNavigationBarItems,
      ),
    );
    ;
  }
}
