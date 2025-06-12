import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';

part 'preset.model.freezed.dart';

part 'preset.model.g.dart';

@freezed
class ConfigurationField with _$ConfigurationField {
  factory ConfigurationField({
    required String id,
    required String name,
    required String description,
  }) = _ConfigurationField;

  factory ConfigurationField.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFieldFromJson(json);
}

@freezed
class CocktailField with _$CocktailField {
  factory CocktailField({
    required String id,
    required Size size,
    required List<Base> bases,
    required List<Ingredient> ingredients,
    required List<Garnish> garnishes,
  }) = _CocktailField;

  factory CocktailField.fromJson(Map<String, dynamic> json) =>
      _$CocktailFieldFromJson(json);
}

@freezed
class Preset with _$Preset {
  factory Preset({
    required String id,
    required bool show,
    required String imgSrc,
    required ConfigurationField configuration,
    required CocktailField cocktail,
  }) = _Preset;

  factory Preset.fromJson(Map<String, dynamic> json) => _$PresetFromJson(json);
}
