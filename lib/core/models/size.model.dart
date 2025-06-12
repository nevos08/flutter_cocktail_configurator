import 'package:freezed_annotation/freezed_annotation.dart';

part 'size.model.g.dart';

part 'size.model.freezed.dart';

@freezed
class Size with _$Size {
  factory Size({
    required int id,
    required int metricSize,
    required String name,
    required int maxBases,
    required int maxIngredients,
    required int maxGarnishes,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}
