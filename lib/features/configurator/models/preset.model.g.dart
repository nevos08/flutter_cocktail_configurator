// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigurationFieldImpl _$$ConfigurationFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfigurationFieldImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ConfigurationFieldImplToJson(
        _$ConfigurationFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$CocktailFieldImpl _$$CocktailFieldImplFromJson(Map<String, dynamic> json) =>
    _$CocktailFieldImpl(
      id: json['id'] as String,
      size: Size.fromJson(json['size'] as Map<String, dynamic>),
      bases: (json['bases'] as List<dynamic>)
          .map((e) => Base.fromJson(e as Map<String, dynamic>))
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      garnishes: (json['garnishes'] as List<dynamic>)
          .map((e) => Garnish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CocktailFieldImplToJson(_$CocktailFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'bases': instance.bases,
      'ingredients': instance.ingredients,
      'garnishes': instance.garnishes,
    };

_$PresetImpl _$$PresetImplFromJson(Map<String, dynamic> json) => _$PresetImpl(
      id: json['id'] as String,
      show: json['show'] as bool,
      imgSrc: json['imgSrc'] as String,
      configuration: ConfigurationField.fromJson(
          json['configuration'] as Map<String, dynamic>),
      cocktail:
          CocktailField.fromJson(json['cocktail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PresetImplToJson(_$PresetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'show': instance.show,
      'imgSrc': instance.imgSrc,
      'configuration': instance.configuration,
      'cocktail': instance.cocktail,
    };
