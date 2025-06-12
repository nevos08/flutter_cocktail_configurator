import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktails_overview_configuration.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'cocktails.repository.g.dart';

@riverpod
CocktailsRepository cocktailsRepository(Ref ref) {
  return CocktailsRepository();
}

class CocktailsRepository {
  Future<List<CocktailsOverviewConfiguration>?> getCocktailConfigurations(String token) async {
    final headers = {"Authorization": "Bearer $token"};

    final Uri configurationsUrl = Uri.https(Constants.BASE_API_URL, "/api/configuration/user");
    final Uri cocktailsUrl = Uri.https(Constants.BASE_API_URL, "/api/cocktail/all");

    final configurationResponse = await http.get(configurationsUrl, headers: headers);
    final cocktailsResponse = await http.get(cocktailsUrl, headers: headers);

    if (cocktailsResponse.statusCode != 200 || configurationResponse.statusCode != 200) {
      throw Exception("Failed to fetch configurations or cocktails");
    }

    final rawConfigurations = jsonDecode(configurationResponse.body);
    final rawCocktails = jsonDecode(cocktailsResponse.body);

    final List<CocktailsOverviewConfiguration> configurations = [];
    for (final rawConfiguration in rawConfigurations["configurations"]) {
      final Map<String, dynamic>? cocktail =
          rawCocktails.firstWhere((element) => element["id"] == rawConfiguration["cocktailId"]);

      if (cocktail == null) continue;

      final configuration = CocktailsOverviewConfiguration(
          id: rawConfiguration["id"],
          name: rawConfiguration["name"],
          description: rawConfiguration["description"],
          size: Size.fromJson(cocktail["size"]),
          bases: ((cocktail["bases"] as List<dynamic>).map((e) => Base.fromJson(e))).toSet(),
          ingredients: ((cocktail["ingredients"] as List<dynamic>)
              .map((e) => Ingredient.fromJson(e))).toSet(),
          garnishes:
              ((cocktail["garnishes"] as List<dynamic>).map((e) => Garnish.fromJson(e))).toSet(),
          isFavorite: rawConfiguration["isFavorite"] ?? false);

      configurations.add(configuration);
    }

    return configurations;
  }

  Future<CocktailsOverviewConfiguration> getConfigurationById(
      String token, String configurationId) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/configuration/full/$configurationId");
    final response = await http.get(url, headers: {"Authorization": "Bearer $token"});

    if (response.statusCode != 200) {
      throw Exception("Failed to fetch configuration");
    }

    final rawConfiguration = jsonDecode(response.body)["data"];
    final rawCocktail = rawConfiguration["cocktail"];

    return CocktailsOverviewConfiguration(
        id: rawConfiguration["id"],
        name: rawConfiguration["name"],
        description: rawConfiguration["description"],
        size: Size.fromJson(rawCocktail["size"]),
        bases: ((rawCocktail["bases"] as List<dynamic>).map((e) => Base.fromJson(e))).toSet(),
        ingredients: ((rawCocktail["ingredients"] as List<dynamic>)
            .map((e) => Ingredient.fromJson(e))).toSet(),
        garnishes:
            ((rawCocktail["garnishes"] as List<dynamic>).map((e) => Garnish.fromJson(e))).toSet(),
        isFavorite: rawConfiguration["isFavorite"] ?? false);
  }

  Future<bool> setConfigurationBookmark(
    String token,
    String configurationId,
    bool isFavorite,
  ) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/configuration/bookmark");
    final response = await http.post(
      url,
      headers: {"Authorization": "Bearer $token"},
      body: jsonEncode({"configId": configurationId, "set": isFavorite}),
    );

    if (response.statusCode != 200) {
      final responseData = jsonDecode(response.body);
      throw Exception(responseData["error"]);
    }

    return response.statusCode == 200;
  }

  Future<String?> createShareableId(String token, String configurationId) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/sharedConfiguration/create");
    final response = await http.post(url,
        headers: {"Authorization": "Bearer $token"},
        body: jsonEncode({"configurationId": configurationId}));

    final rawResponse = jsonDecode(response.body);

    if (response.statusCode != 200) {
      throw Exception(rawResponse["error"]);
    }

    return rawResponse["id"];
  }
}
