import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_category.model.freezed.dart';

part 'ingredient_category.model.g.dart';

@freezed
class IngredientCategory with _$IngredientCategory {
  factory IngredientCategory({
    required int id,
    required String name,
  }) = _IngredientCategory;

  factory IngredientCategory.fromJson(Map<String, dynamic> json) =>
      _$IngredientCategoryFromJson(json);
}
