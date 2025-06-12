import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'orders.repository.g.dart';

@riverpod
OrdersRepository ordersRepository(Ref ref) {
  return OrdersRepository();
}

class OrdersRepository {
  Future<List<Order>?> getOrders(String token) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/order");
    final response = await http.get(url, headers: {"Authorization": "Bearer $token"});

    if (response.statusCode != 200) {
      return null;
    }

    final responseData = jsonDecode(response.body);

    if (responseData["success"] == false) {
      return null;
    }

    final rawOrders = responseData["orders"];

    if (rawOrders == null) {
      return null;
    }

    final List<Order> orders = [];
    for (final order in rawOrders) {
      orders.add(Order.fromJson(order));
    }

    orders.sort((a, b) => b.orderDate.compareTo(a.orderDate));

    return orders;
  }

  Future<Order?> getOrder(String token, String orderId) async {
    final Uri url = Uri.https(Constants.BASE_API_URL, "/api/order/$orderId");
    final response = await http.get(url, headers: {"Authorization": "Bearer $token"});

    if (response.statusCode != 200) {
      return null;
    }

    final responseData = jsonDecode(response.body);

    if (responseData["success"] == false) {
      return null;
    }

    final rawOrder = responseData["order"];
    final order = Order.fromJson(rawOrder);
    return order;
  }
}
