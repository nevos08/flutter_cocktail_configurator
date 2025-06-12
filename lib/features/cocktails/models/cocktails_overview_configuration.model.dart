import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';

part 'cocktails_overview_configuration.model.freezed.dart';

part 'cocktails_overview_configuration.model.g.dart';

@freezed
class CocktailsOverviewConfiguration with _$CocktailsOverviewConfiguration {
  factory CocktailsOverviewConfiguration({
    required String id,
    required String name,
    required String description,
    required Size size,
    required Set<Base> bases,
    required Set<Ingredient> ingredients,
    required Set<Garnish> garnishes,
    required bool isFavorite,
  }) = _CocktailsOverviewConfiguration;

  factory CocktailsOverviewConfiguration.fromJson(Map<String, dynamic> json) =>
      _$CocktailsOverviewConfigurationFromJson(json);
}
