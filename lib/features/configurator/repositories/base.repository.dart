import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'base.repository.g.dart';

@riverpod
BaseRepository baseRepository(Ref ref) {
  return BaseRepository();
}

class BaseRepository {
  Future<List<Base>> getBases(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/base/all");
    final response = await http.get(url, headers: {"Authorization": "Bearer $token"});

    if (response.statusCode != 200) return [];

    final List<dynamic> rawData = jsonDecode(response.body);
    final List<Base> data = [];

    for (dynamic rawBase in rawData) {
      rawBase["alcohol"] = double.parse(rawBase["alcohol"]);
      rawBase["price"] = double.parse(rawBase["price"]);
      final base = Base.fromJson(rawBase);
      data.add(base);
    }

    return data;
  }
}
