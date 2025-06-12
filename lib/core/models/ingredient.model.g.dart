// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
      id: (json['id'] as num).toInt(),
      ingredientCategoryId: (json['ingredientCategoryId'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      imgSrc: json['imgSrc'] as String,
    );

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ingredientCategoryId': instance.ingredientCategoryId,
      'name': instance.name,
      'price': instance.price,
      'imgSrc': instance.imgSrc,
    };
