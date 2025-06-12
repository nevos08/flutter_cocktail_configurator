import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
    required this.orderDate,
    required this.price,
    this.discountedPrice,
    this.discountCode,
  });

  final DateTime orderDate;
  final double price;
  final double? discountedPrice;
  final String? discountCode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bestelldatum",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(DateFormat.yMMMd("de_DE").format(orderDate))
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gesamtpreis",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(CurrencyFormatter.format(price, currencyFormatterSettings))
                ],
              ),
              if (discountCode != null) const SizedBox(height: 8),
              if (discountCode != null)
                Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rabattcode",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        discountCode!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
              if (discountCode != null) const SizedBox(height: 8),
              if (discountedPrice != null)
                Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rabattierter Preis:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(CurrencyFormatter.format(discountedPrice!, currencyFormatterSettings))
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
