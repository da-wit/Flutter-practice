import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/categories.dart';
import 'package:meal/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Meal> _favoriteMeal = [];

  void _showInfoMessage(String text) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }

  void _toggleFavorite(Meal meal) {
    bool isIN = _favoriteMeal.contains(meal);
    if (isIN) {
      setState(() {
        _favoriteMeal.remove(meal);
      });
      _showInfoMessage("Meal removed form favorite list");
    } else {
      setState(() {
        _favoriteMeal.add(meal);
      });
      _showInfoMessage("Meal added to Favorite list");
    }
  }

  String message = "Uh oh ... nothing here!";
  String messageFav = "no favorite ";
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen =
        CategorisScreen(message: message, toggleFav: _toggleFavorite);
    var acitvePageTitle = "Category";

    if (_selectedPageIndex == 1) {
      activeScreen = MealsScreen(
          message: messageFav,
          toggleFav: _toggleFavorite,
          meals: _favoriteMeal);
      acitvePageTitle = "Favorite";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(acitvePageTitle),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Categoty"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite"),
        ],
      ),
    );
  }
}
