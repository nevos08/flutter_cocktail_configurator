import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.model.g.dart';

part 'ingredient.model.freezed.dart';

@freezed
class Ingredient with _$Ingredient {
  factory Ingredient({
    required int id,
    required int ingredientCategoryId,
    required String name,
    required double price,
    required String imgSrc,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) => _$IngredientFromJson(json);
}
