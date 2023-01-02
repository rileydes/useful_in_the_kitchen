// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientModel _$IngredientModelFromJson(Map<String, dynamic> json) =>
    IngredientModel(
      quantity: (json['quantity'] as num).toDouble(),
      units: json['units'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$IngredientModelToJson(IngredientModel instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'units': instance.units,
      'name': instance.name,
    };
