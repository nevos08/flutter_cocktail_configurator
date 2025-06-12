// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garnish.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GarnishImpl _$$GarnishImplFromJson(Map<String, dynamic> json) =>
    _$GarnishImpl(
      id: (json['id'] as num).toInt(),
      garnishCategoryId: (json['garnishCategoryId'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      imgSrc: json['imgSrc'] as String,
    );

Map<String, dynamic> _$$GarnishImplToJson(_$GarnishImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'garnishCategoryId': instance.garnishCategoryId,
      'name': instance.name,
      'price': instance.price,
      'imgSrc': instance.imgSrc,
    };
