import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'size.repository.g.dart';

@riverpod
SizeRepository sizeRepository(Ref ref) {
  return SizeRepository();
}

class SizeRepository {
  Future<List<Size>> getSizes(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/cocktailSize/all");
    final response = await http.get(url, headers: {"Authorization": "Bearer $token"});

    if (response.statusCode != 200) return [];

    final List<dynamic> rawData = jsonDecode(response.body);
    final List<Size> data = [];

    for (dynamic rawSize in rawData) {
      final size = Size.fromJson(rawSize);
      data.add(size);
    }

    return data;
  }
}
