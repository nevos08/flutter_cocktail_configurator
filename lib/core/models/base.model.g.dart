// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseImpl _$$BaseImplFromJson(Map<String, dynamic> json) => _$BaseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      hasAlcohol: json['hasAlcohol'] as bool,
      alcohol: (json['alcohol'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      imgSrc: json['imgSrc'] as String,
    );

Map<String, dynamic> _$$BaseImplToJson(_$BaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hasAlcohol': instance.hasAlcohol,
      'alcohol': instance.alcohol,
      'price': instance.price,
      'imgSrc': instance.imgSrc,
    };
