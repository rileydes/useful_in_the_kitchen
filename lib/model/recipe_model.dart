import 'package:json_annotation/json_annotation.dart';
import 'package:useful_in_the_kitchen/model/step_model.dart';

import '../constants.dart';
import 'ingredient_model.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class RecipeModel {
  /// [title] is the displayed title of the recipe.
  @JsonKey(name: recipeModelTitle)
  final String title;

  @JsonKey(name: recipeModelDescription)
  final String description;

  @JsonKey(name: recipeModelTags)
  final List<String> tags;

  @JsonKey(name: recipeModelIngredients)
  final List<IngredientModel> ingredients;

  @JsonKey(name: recipeModelGalleryURLs)
  final List<String> imageURLs;

  @JsonKey(name: recipeModelPrepTime)
  final double prepTime;

  @JsonKey(name: recipeModelCookingTime)
  final double cookTime;

  @JsonKey(name: recipeModelServings)
  final int servings;

  @JsonKey(name: recipeModelCalories)
  final double calories;

  @JsonKey(name: recipeModelFat)
  final double fat;

  @JsonKey(name: recipeModelCarbs)
  final double carbs;

  @JsonKey(name: recipeModelProtein)
  final double protein;

  @JsonKey(name: recipeModelDirections)
  final List<String> steps;

  const RecipeModel({
    required this.title,
    required this.description,
    this.tags = const [],
    required this.ingredients,
    this.imageURLs = const[],
    this.prepTime = 0.0,
    this.cookTime = 0.0,
    this.servings = 1,
    this.calories = 0.0,
    this.fat = 0.0,
    this.carbs = 0.0,
    this.protein = 0.0,
    required this.steps,
  });

  /// Connect the generated [_$RecipeModelFromJson] function to the `fromJson`
  /// factory.
  factory RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

  /// Connect the generated [_$RecipeModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RecipeModelToJson(this);
}