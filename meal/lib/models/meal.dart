enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  const Meal(
      {required this.id,
      required this.title,
      required this.categories,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl,
      required this.ingredients,
      required this.isGlutenFree,
      required this.isVegan,
      required this.isVegetarian,
      required this.steps,
      required this.isLactoseFree});

  final String id;
  final List<String> categories;
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
}
