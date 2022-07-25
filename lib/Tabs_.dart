import 'package:flutter/material.dart';

import 'Liste_/Favorie.dart';
import 'Menu/Drawer_.dart';
import 'categories_screen.dart';

class Tabs_ extends StatefulWidget {
  // const Tabs_({Key? key}) : super(key: key);

  @override
  State<Tabs_> createState() => _Tabs_State();
}

class _Tabs_State extends State<Tabs_> {
  final List<Map<String, dynamic>> _pages = [
    {'Pages': categorieScreen(), 'title': 'Categories', 'icon': Icons.category},
    {'Pages': Favorie(), 'title': 'Your Favorie', 'icon': Icons.star}
  ];
  int _indexpages = 0;
  void _selectpages(int index) {
    setState(() {
      _indexpages = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer_(),
        appBar: AppBar(
          title: Text(_pages[_indexpages]['title']),
          centerTitle: true,
        ),
        body: _pages[_indexpages]['Pages'],
        bottomNavigationBar: BottomNavigationBar(
            onTap: _selectpages,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _indexpages,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.category),
                  label: 'Categorie'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.star),
                  label: 'Favorie')
            ]),
      ),
    );
  }
}
