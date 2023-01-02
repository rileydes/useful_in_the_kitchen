// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => RecipeModel(
      title: json['title'] as String,
      description: json['descriptions'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageURLs: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      prepTime: (json['prep'] as num?)?.toDouble() ?? 0.0,
      cookTime: (json['cook'] as num?)?.toDouble() ?? 0.0,
      servings: json['servings'] as int? ?? 1,
      calories: (json['cal'] as num?)?.toDouble() ?? 0.0,
      fat: (json['fat'] as num?)?.toDouble() ?? 0.0,
      carbs: (json['carb'] as num?)?.toDouble() ?? 0.0,
      protein: (json['protein'] as num?)?.toDouble() ?? 0.0,
      steps: (json['directions'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeModelToJson(RecipeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'descriptions': instance.description,
      'tags': instance.tags,
      'ingredients': instance.ingredients,
      'images': instance.imageURLs,
      'prep': instance.prepTime,
      'cook': instance.cookTime,
      'servings': instance.servings,
      'cal': instance.calories,
      'fat': instance.fat,
      'carb': instance.carbs,
      'protein': instance.protein,
      'directions': instance.steps,
    };
