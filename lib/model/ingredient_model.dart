import 'package:json_annotation/json_annotation.dart';

import '../constants.dart';

part 'ingredient_model.g.dart';

@JsonSerializable()
class IngredientModel {
  @JsonKey(name: ingredientModelQuantity)
  final double quantity;

  @JsonKey(name: ingredientModelUnits)
  final String units;

  @JsonKey(name: ingredientModelName)
  final String name;

  IngredientModel({
    required this.quantity,
    required this.units,
    required this.name
  });

  /// Connect the generated [_$RecipeModelFromJson] function to the `fromJson`
  /// factory.
  factory IngredientModel.fromJson(Map<String, dynamic> json) => _$IngredientModelFromJson(json);

  /// Connect the generated [_$RecipeModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$IngredientModelToJson(this);
}