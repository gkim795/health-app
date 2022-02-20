import 'package:flutter/material.dart';

import './browse_screen.dart';
import 'summary_screen.dart';
import './sharing_screen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen();

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': SummaryScreen(), 'title': "Summary"},
      {'page': SharingScreen(), 'title': "Sharing"},
      {'page': BrowseScreen(), 'title': "Browse"},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xfffcfcff),
        title: Text(_pages[_selectedPageIndex]['title'] as String,
            style: const TextStyle(color: Colors.black)),
        actions: const [Icon(Icons.person)],
      ),
      body: (_pages[_selectedPageIndex]['page'] as Widget),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Summary",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Sharing",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: "Browse",
            ),
          ]),
    );
  }
}
