import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/generate_name_and_desc_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'ai.repository.g.dart';

@riverpod
AiRepository aiRepository(Ref ref) {
  return AiRepository();
}

class AiRepository {
  Future<GenerateNameAndDescResult> generateNameAndDescription(Configuration configuration) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/ai/generate");
    final response = await http.post(
      url,
      body: jsonEncode(configuration.toJson()),
      headers: {
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to generate name and description");
    }

    print(response.body);
    final data = jsonDecode(response.body);
    return GenerateNameAndDescResult(
      name: data["ai_magic"]["name"],
      description: data["ai_magic"]["description"],
    );
  }
}
