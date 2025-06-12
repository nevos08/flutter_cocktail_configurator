import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';

class CartItemIngredients extends ConsumerWidget {
  const CartItemIngredients({super.key, required this.ingredients});

  final Set<Ingredient> ingredients;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Zutaten",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ingredients.length,
          itemBuilder: (context, index) => ListTile(
            contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            leading: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                  "http://${Constants.BASE_API_URL}/${ingredients.elementAt(index).imgSrc}"),
            ),
            title: Text(ingredients.elementAt(index).name),
            trailing: Text(
              CurrencyFormatter.format(
                ingredients.elementAt(index).price,
                currencyFormatterSettings,
                decimal: 2,
              ),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        )
      ],
    );
  }
}
