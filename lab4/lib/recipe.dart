class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;


  Recipe(
      this.label,
      this.imageUrl,
      this.servings,
      this.ingredients,
      );


  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
      2,
      [
        Ingredient(1, 'can', 'Tomato Soup',),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
      1,
      [
        Ingredient(2, 'slices', 'Cheese',),
        Ingredient(2, 'slices', 'Bread',),
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
