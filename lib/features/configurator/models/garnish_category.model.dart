import 'package:freezed_annotation/freezed_annotation.dart';

part 'garnish_category.model.freezed.dart';

part 'garnish_category.model.g.dart';

@freezed
class GarnishCategory with _$GarnishCategory {
  factory GarnishCategory({
    required int id,
    required String name,
  }) = _GarnishCategory;

  factory GarnishCategory.fromJson(Map<String, dynamic> json) => _$GarnishCategoryFromJson(json);
}
