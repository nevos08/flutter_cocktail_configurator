import 'package:freezed_annotation/freezed_annotation.dart';

part 'garnish.model.g.dart';

part 'garnish.model.freezed.dart';

@freezed
class Garnish with _$Garnish {
  factory Garnish({
    required int id,
    required int garnishCategoryId,
    required String name,
    required double price,
    required String imgSrc,
  }) = _Garnish;

  factory Garnish.fromJson(Map<String, dynamic> json) => _$GarnishFromJson(json);
}
