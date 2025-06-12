import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/providers/cart.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/view/widgets/cart_item_bases.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/view/widgets/cart_item_garnishes.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/view/widgets/cart_item_ingredients.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';

class CartItem extends ConsumerWidget {
  const CartItem({super.key, required this.configuration});

  final CartConfiguration configuration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sumBases = configuration.bases
        .fold<double>(0, (previousValue, element) => previousValue + element.price);
    final sumIngredients = configuration.ingredients
        .fold<double>(0, (previousValue, element) => previousValue + element.price);
    final sumGarnishes = configuration.garnishes
        .fold<double>(0, (previousValue, element) => previousValue + element.price);
    final sumTotal = sumBases + sumIngredients + sumGarnishes;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    configuration.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        ref.read(cartProvider.notifier).removeFromCart(configuration);
                      },
                      icon: const Icon(Icons.delete))
                ],
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                configuration.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Divider(
              color: Colors.black12,
            ),
            CartItemBases(bases: configuration.bases),
            CartItemIngredients(ingredients: configuration.ingredients),
            CartItemGarnishes(garnishes: configuration.garnishes),
            const Divider(color: Colors.black12),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Preis",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(CurrencyFormatter.format(sumTotal, currencyFormatterSettings),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
