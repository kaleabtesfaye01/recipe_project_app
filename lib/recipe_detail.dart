import 'package:flutter/material.dart';
import 'package:recipe_project_app/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  double _currentServings = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.recipe.label),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image(image: AssetImage(widget.recipe.imageUrl)),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                widget.recipe.label,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredient = widget.recipe.ingredients[index];

                      final quantity = ingredient.quantity * (_currentServings / widget.recipe.servings);

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 4.0),
                        child: Text(
                          "${quantity.toStringAsFixed(1)} ${ingredient.measure} ${ingredient.name}",
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      );
                    }),
              ),
              Slider(
                value: _currentServings,
                max: 11,
                min: 1,
                divisions: 10,
                label: _currentServings.round().toString(),
                onChanged: (double newServings) => {
                  setState(() {
                    _currentServings = newServings;
                  }),
                },
              ),
            ],
          ),
        ),
      );
}
