// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SizeImpl _$$SizeImplFromJson(Map<String, dynamic> json) => _$SizeImpl(
      id: (json['id'] as num).toInt(),
      metricSize: (json['metricSize'] as num).toInt(),
      name: json['name'] as String,
      maxBases: (json['maxBases'] as num).toInt(),
      maxIngredients: (json['maxIngredients'] as num).toInt(),
      maxGarnishes: (json['maxGarnishes'] as num).toInt(),
    );

Map<String, dynamic> _$$SizeImplToJson(_$SizeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metricSize': instance.metricSize,
      'name': instance.name,
      'maxBases': instance.maxBases,
      'maxIngredients': instance.maxIngredients,
      'maxGarnishes': instance.maxGarnishes,
    };
