class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Spagetti and Meaballs',
      'assets/2126711929_ef763de2b3_w.jpg',
      1,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'Sauce')
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
      4,
      [
        Ingredient(4, 'cups', 'Tomato Puree'),
        Ingredient(1, 'cup', 'Vegetable Broth'),
        Ingredient(1, 'teaspoon', 'Salt'),
        Ingredient(1, 'tablespoon', 'Olive Oil'),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
      2,
      [
        Ingredient(4, 'slices', 'Bread'),
        Ingredient(2, 'tablespoons', 'Butter'),
        Ingredient(4, 'slices', 'Cheddar Cheese'),
        Ingredient(1, 'pinch', 'Salt (optional)'),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',
      6,
      [
        Ingredient(1, 'cup', 'Butter'),
        Ingredient(1, 'cup', 'Sugar'),
        Ingredient(2, 'cups', 'Flour'),
        Ingredient(1, 'cup', 'Chocolate Chips'),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
      4,
      [
        Ingredient(1, 'pound', 'Ground Beef'),
        Ingredient(4, 'cups', 'Lettuce'),
        Ingredient(1, 'cup', 'Cheddar Cheese'),
        Ingredient(0.5, 'cup', 'Salsa'),
      ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
      8,
      [
        Ingredient(1, 'pack', 'Pizza Dough'),
        Ingredient(1, 'cup', 'Mozzarella Cheese'),
        Ingredient(0.5, 'cup', 'Pineapple'),
        Ingredient(0.25, 'cup', 'Ham'),
      ],
    )
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
