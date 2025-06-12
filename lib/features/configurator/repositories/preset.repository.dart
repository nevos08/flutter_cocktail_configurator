import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/preset.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preset.repository.g.dart';

@riverpod
PresetRepository presetRepository(Ref ref) {
  return PresetRepository();
}

class PresetRepository {
  Future<List<Preset>> getPresets(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/preset/all");
    final response = await http.get(url, headers: {
      "Authorization": "Bearer $token",
    });

    if (response.statusCode != 200) return [];

    final List<dynamic> rawData = jsonDecode(response.body);
    final List<Preset> data = [];

    for (dynamic rawPreset in rawData) {
      final preset = Preset.fromJson(rawPreset);
      data.add(preset);
    }

    return data;
  }

  Future<Configuration?> useSharedCode(String token, String code) async {
    final headers = {"Authorization": "Bearer $token"};

    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/sharedConfiguration/$code");

    final sharedConfigurationResponse = await http.get(url, headers: headers);
    final rawSharedConfigurationResponse = jsonDecode(sharedConfigurationResponse.body);

    if (sharedConfigurationResponse.statusCode != 200) {
      throw Exception(rawSharedConfigurationResponse["error"]);
    }

    final configurationId = rawSharedConfigurationResponse["configurationId"];
    final configurationUrl =
        Uri.https(Constants.BASE_API_URL, "api/configuration/$configurationId");

    final configurationResponse = await http.get(configurationUrl, headers: headers);

    final rawConfigurationResponse = jsonDecode(configurationResponse.body);
    if (configurationResponse.statusCode != 200) {
      print(rawConfigurationResponse["error"]);
      throw Exception("Failed to fetch configuration");
    }

    final cocktailId = rawConfigurationResponse["cocktailId"];
    final cocktailUrl = Uri.https(Constants.BASE_API_URL, "api/cocktail/$cocktailId");

    final cocktailResponse = await http.get(cocktailUrl, headers: headers);
    final rawCocktailResponse = jsonDecode(cocktailResponse.body);

    if (cocktailResponse.statusCode != 200) {
      print(rawCocktailResponse["error"]);
      throw Exception("Failed to fetch cocktail");
    }

    return Configuration(
      name: rawConfigurationResponse["name"],
      description: rawConfigurationResponse["description"],
      size: Size.fromJson(rawCocktailResponse["size"]),
      bases: ((rawCocktailResponse["bases"] as List<dynamic>).map((e) => Base.fromJson(e))).toSet(),
      ingredients: ((rawCocktailResponse["ingredients"] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e))).toSet(),
      garnishes: ((rawCocktailResponse["garnishes"] as List<dynamic>)
          .map((e) => Garnish.fromJson(e))).toSet(),
    );
  }
}
