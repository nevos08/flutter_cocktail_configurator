// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      orderDate: DateTime.parse(json['orderDate'] as String),
      price: (json['price'] as num).toDouble(),
      priceDiscounted: (json['priceDiscounted'] as num?)?.toDouble(),
      discountcode: json['discountcode'] as String?,
      positions: (json['positions'] as List<dynamic>)
          .map((e) => OrderPosition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'orderDate': instance.orderDate.toIso8601String(),
      'price': instance.price,
      'priceDiscounted': instance.priceDiscounted,
      'discountcode': instance.discountcode,
      'positions': instance.positions,
    };

_$OrderPositionImpl _$$OrderPositionImplFromJson(Map<String, dynamic> json) =>
    _$OrderPositionImpl(
      index: (json['index'] as num).toInt(),
      configName: json['configName'] as String,
      configId: json['configId'] as String,
      cocktailId: json['cocktailId'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderPositionImplToJson(_$OrderPositionImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'configName': instance.configName,
      'configId': instance.configId,
      'cocktailId': instance.cocktailId,
      'price': instance.price,
    };
