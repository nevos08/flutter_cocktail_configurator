import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';

import 'ingredient.model.dart';

part 'configuration.model.g.dart';

part 'configuration.model.freezed.dart';

@freezed
class Configuration with _$Configuration {
  factory Configuration({
    required String name,
    required String description,
    required Size size,
    required Set<Base> bases,
    required Set<Ingredient> ingredients,
    required Set<Garnish> garnishes,
  }) = _Configuration;

  factory Configuration.fromJson(Map<String, dynamic> json) => _$ConfigurationFromJson(json);
}

@freezed
class SubmittedConfiguration with _$SubmittedConfiguration {
  factory SubmittedConfiguration({
    required String name,
    required String description,
    required int sizeId,
    required List<int> bases,
    required List<int> ingredients,
    required List<int> garnishes,
  }) = _SubmittedConfiguration;

  factory SubmittedConfiguration.fromJson(Map<String, dynamic> json) =>
      _$SubmittedConfigurationFromJson(json);
}

@freezed
class CartConfiguration with _$CartConfiguration {
  factory CartConfiguration({
    required String name,
    required String description,
    required Size size,
    required Set<Base> bases,
    required Set<Ingredient> ingredients,
    required Set<Garnish> garnishes,
  }) = _CartConfiguration;

  factory CartConfiguration.fromJson(Map<String, dynamic> json) =>
      _$CartConfigurationFromJson(json);
}
