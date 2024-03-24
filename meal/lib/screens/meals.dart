import 'package:flutter/material.dart';
// import 'package:meal/main.dart';
// import 'package:meal/models/category.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/meal_detail.dart';
import 'package:meal/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {required this.message,
      required this.toggleFav,
      this.title,
      required this.meals,
      super.key});

  final String? title;
  final List<Meal> meals;
  final void Function(Meal mal) toggleFav;
  final String message;

  void selectedMeal(BuildContext context, Meal meal) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) =>
                MealDetailScreen(toggleFav: toggleFav, meal: meal)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
              selectedMeal: (meal) {
                selectedMeal(context, meal);
              },
              meal: meals[index],
            ));

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              " Try Selecting a different Category",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      );
    }

    if (title == null) {
      return content;
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: content,
      );
    }
  }
}
