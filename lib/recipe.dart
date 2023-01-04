class Recipe {
  late String label;
  late String imageURL;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
      this.label,
      this.imageURL,
      this.servings,
      this.ingredients,
      );
  // TODO : Add List<Recipe> here

  static List<Recipe> samples = [
    Recipe(
        'Pizza',
        'assets/pizza.png',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),

    Recipe(
      'Spaguetti',
      'assets/spaguetti.png',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),

    Recipe(
      'Sushi',
      'assets/sushi.png',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),

    Recipe(
      'Taco',
      'assets/taco.png',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
  ];

}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
      this.quantity,
      this.measure,
      this.name,
      );
}