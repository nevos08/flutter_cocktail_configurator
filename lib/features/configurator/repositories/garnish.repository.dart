import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/garnish_category.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'garnish.repository.g.dart';

@riverpod
GarnishRepository garnishRepository(Ref ref) {
  return GarnishRepository();
}

class GarnishRepository {
  Future<List<Garnish>> getGarnishes(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/garnish/all");
    final response = await http.get(url, headers: {
      "Authorization": "Bearer $token",
    });

    if (response.statusCode != 200) return [];

    final List<dynamic> rawData = jsonDecode(response.body);
    final List<Garnish> data = [];

    for (dynamic rawGarnish in rawData) {
      rawGarnish["price"] = double.parse(rawGarnish["price"]);
      final garnish = Garnish.fromJson(rawGarnish);
      data.add(garnish);
    }

    return data;
  }

  Future<List<GarnishCategory>> getCategories(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/garnish/categories/all");

    final response = await http.get(url, headers: {
      "Authorization": "Bearer $token",
    });

    if (response.statusCode != 200) return [];

    final List<dynamic> rawData = jsonDecode(response.body);
    final List<GarnishCategory> data = [];

    for (dynamic rawCategory in rawData) {
      final category =
          GarnishCategory.fromJson({"id": rawCategory["id"], "name": rawCategory["name"]});
      data.add(category);
    }

    return data;
  }
}
