import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/ingredient_category.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'ingredient.repository.g.dart';

@riverpod
IngredientRepository ingredientRepository(Ref ref) {
  return IngredientRepository();
}

class IngredientRepository {
  Future<List<Ingredient>> getIngredients(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/ingredient/all");
    final response = await http.get(url, headers: {
      "Authorization": "Bearer $token",
    });

    if (response.statusCode != 200) return [];

    final List<dynamic> rawData = jsonDecode(response.body);
    final List<Ingredient> data = [];

    for (dynamic rawIngredient in rawData) {
      rawIngredient["price"] = double.parse(rawIngredient["price"]);
      final ingredient = Ingredient.fromJson(rawIngredient);
      data.add(ingredient);
    }

    return data;
  }

  Future<List<IngredientCategory>> getCategories(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/ingredient/categories/all");

    final response = await http.get(url, headers: {
      "Authorization": "Bearer $token",
    });

    if (response.statusCode != 200) return [];

    final List<dynamic> rawData = jsonDecode(response.body);
    final List<IngredientCategory> data = [];

    for (dynamic rawCategory in rawData) {
      final category =
          IngredientCategory.fromJson({"id": rawCategory["id"], "name": rawCategory["name"]});
      data.add(category);
    }

    return data;
  }
}
