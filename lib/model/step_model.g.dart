// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StepModel _$StepModelFromJson(Map<String, dynamic> json) => StepModel(
      title: json['stepTitle'] as String,
      instruction: json['stepInstructions'] as String,
      ingredients: (json['stepIngredients'] as List<dynamic>?)
              ?.map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timer: (json['timer'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$StepModelToJson(StepModel instance) => <String, dynamic>{
      'stepTitle': instance.title,
      'stepInstructions': instance.instruction,
      'timer': instance.timer,
      'stepIngredients': instance.ingredients,
    };
