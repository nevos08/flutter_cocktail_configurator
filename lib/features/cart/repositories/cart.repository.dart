import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/models/check_discount_code_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'cart.repository.g.dart';

@riverpod
CartRepository cartRepository(Ref ref) {
  return CartRepository();
}

class CartRepository {
  Future<CheckDiscountCodeResponse?> checkDiscountCode(String token, String discountCode) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/discount/check");
    final response = await http.post(
      url,
      headers: {"Authorization": "Bearer $token"},
      body: jsonEncode({"code": discountCode}),
    );

    if (response.statusCode != 200) return null;

    final responseData = jsonDecode(response.body);
    final discount = double.tryParse(responseData["discount"].toString()) ?? 0;

    return CheckDiscountCodeResponse(
        id: responseData["id"],
        code: responseData["code"],
        discount: discount / 100,
        isValid: responseData["valid"]);
  }

  Future<bool> submitOrder(
      String token, List<SubmittedConfiguration> configurations, String? discountCode) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/order/take");

    final response = await http.post(
      url,
      headers: {"Authorization": "Bearer $token"},
      body: jsonEncode({
        "subs": configurations,
        "discountCode": discountCode,
      }),
    );

    return response.statusCode == 200;
  }
}
