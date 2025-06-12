import 'package:freezed_annotation/freezed_annotation.dart';

part 'base.model.g.dart';

part 'base.model.freezed.dart';

@freezed
class Base with _$Base {
  factory Base({
    required int id,
    required String name,
    required bool hasAlcohol,
    required double alcohol,
    required double price,
    required String imgSrc,
  }) = _Base;

  factory Base.fromJson(Map<String, dynamic> json) => _$BaseFromJson(json);
}
