import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favorites_screen.dart';

import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorite',
    }
  ];

  int _selectedPagesIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPagesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPagesIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPagesIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage, // flutter in automatico prenderà l'indice
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        // indica quale scheda in basso è attualmente selezionata
        currentIndex: _selectedPagesIndex,
        // type: BottomNavigationBarType.fixed,
        // type: BottomNavigationBarType
        //     .shifting, // per fare delle animazioni, ma bisogna aggiungere lo sfondo nel bottomItem sotto
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
