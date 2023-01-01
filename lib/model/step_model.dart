import 'package:json_annotation/json_annotation.dart';

import '../constants.dart';
import 'ingredient_model.dart';

part 'step_model.g.dart';

@JsonSerializable()
class StepModel {
  /// [title] is the displayed title of the recipe.
  @JsonKey(name: stepModelTitle)
  final String title;

  @JsonKey(name: stepModelInstructions)
  final String instruction;

  @JsonKey(name: stepModelTimer)
  final double timer;

  @JsonKey(name: stepModelIngredients)
  final List<IngredientModel> ingredients;

  const StepModel({
    required this.title,
    required this.instruction,
    this.ingredients = const [],
    this.timer = 0.0
  });

  /// Connect the generated [_$StepModelFromJson] function to the `fromJson`
  /// factory.
  factory StepModel.fromJson(Map<String, dynamic> json) => _$StepModelFromJson(json);

  /// Connect the generated [_$StepModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$StepModelToJson(this);
}