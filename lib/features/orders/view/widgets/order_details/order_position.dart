import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order.model.dart';

class OrderPositionItem extends StatelessWidget {
  const OrderPositionItem({super.key, required this.orderPosition});

  final OrderPosition orderPosition;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.pushNamed("cocktail_details", pathParameters: {"id": orderPosition.configId});
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      title: Text(orderPosition.configName),
      subtitle: Text(
          "Preis: ${CurrencyFormatter.format(orderPosition.price, currencyFormatterSettings)}"),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }
}
