// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigurationImpl _$$ConfigurationImplFromJson(Map<String, dynamic> json) =>
    _$ConfigurationImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      size: Size.fromJson(json['size'] as Map<String, dynamic>),
      bases: (json['bases'] as List<dynamic>)
          .map((e) => Base.fromJson(e as Map<String, dynamic>))
          .toSet(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toSet(),
      garnishes: (json['garnishes'] as List<dynamic>)
          .map((e) => Garnish.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$$ConfigurationImplToJson(_$ConfigurationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'size': instance.size,
      'bases': instance.bases.toList(),
      'ingredients': instance.ingredients.toList(),
      'garnishes': instance.garnishes.toList(),
    };

_$SubmittedConfigurationImpl _$$SubmittedConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmittedConfigurationImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      sizeId: (json['sizeId'] as num).toInt(),
      bases: (json['bases'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      garnishes: (json['garnishes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$SubmittedConfigurationImplToJson(
        _$SubmittedConfigurationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'sizeId': instance.sizeId,
      'bases': instance.bases,
      'ingredients': instance.ingredients,
      'garnishes': instance.garnishes,
    };

_$CartConfigurationImpl _$$CartConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$CartConfigurationImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      size: Size.fromJson(json['size'] as Map<String, dynamic>),
      bases: (json['bases'] as List<dynamic>)
          .map((e) => Base.fromJson(e as Map<String, dynamic>))
          .toSet(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toSet(),
      garnishes: (json['garnishes'] as List<dynamic>)
          .map((e) => Garnish.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$$CartConfigurationImplToJson(
        _$CartConfigurationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'size': instance.size,
      'bases': instance.bases.toList(),
      'ingredients': instance.ingredients.toList(),
      'garnishes': instance.garnishes.toList(),
    };
