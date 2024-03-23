import 'package:flutter/material.dart';
import 'package:meal/data/dummy_data.dart';
import 'package:meal/models/category.dart';
import 'package:meal/screens/meals.dart';
import 'package:meal/widgets/category_grid_item.dart';

class CategorisScreen extends StatelessWidget {
  const CategorisScreen({super.key});

  void _selectedCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) =>
            MealsScreen(title: category.title, meals: filteredMeals),
      ),
    );
    //Navigator.of(context).push(route)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Pick youtr category "),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          // ...availableCategories.map((category) {
          //   return CategoryGridItem(
          //     category: category,
          //     onSelectCategoty: () {
          //       _selectedCategory(context, category);
          //     },
          //   );
          // })
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategoty: () {
                _selectedCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}
