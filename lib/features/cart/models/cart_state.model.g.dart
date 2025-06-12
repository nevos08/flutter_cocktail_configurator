// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_state.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartStateImpl _$$CartStateImplFromJson(Map<String, dynamic> json) =>
    _$CartStateImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => CartConfiguration.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      discount: (json['discount'] as num?)?.toDouble(),
      discountCode: json['discountCode'] as String?,
    );

Map<String, dynamic> _$$CartStateImplToJson(_$CartStateImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'discount': instance.discount,
      'discountCode': instance.discountCode,
    };
