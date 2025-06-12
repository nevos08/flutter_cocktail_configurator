// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktails_overview_configuration.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CocktailsOverviewConfigurationImpl
    _$$CocktailsOverviewConfigurationImplFromJson(Map<String, dynamic> json) =>
        _$CocktailsOverviewConfigurationImpl(
          id: json['id'] as String,
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
          isFavorite: json['isFavorite'] as bool,
        );

Map<String, dynamic> _$$CocktailsOverviewConfigurationImplToJson(
        _$CocktailsOverviewConfigurationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'size': instance.size,
      'bases': instance.bases.toList(),
      'ingredients': instance.ingredients.toList(),
      'garnishes': instance.garnishes.toList(),
      'isFavorite': instance.isFavorite,
    };
