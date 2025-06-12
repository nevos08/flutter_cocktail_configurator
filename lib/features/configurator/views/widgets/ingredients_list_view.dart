import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/ingredient.viewmodel.dart';

class IngredientsListView extends ConsumerWidget {
  const IngredientsListView({super.key, required this.ingredientKeys});

  final Map<int, GlobalKey> ingredientKeys;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ingredientViewModelProvider).asData!.value;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            for (final category in state.categories)
              Column(
                key: ingredientKeys[category.id],
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      category.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: ref
                        .read(ingredientViewModelProvider.notifier)
                        .getIngredientsByCategory(category.id)
                        .length,
                    itemBuilder: (context, index) {
                      final ingredient = ref
                          .read(ingredientViewModelProvider.notifier)
                          .getIngredientsByCategory(category.id)[index];

                      final hasIngredient = ref
                          .watch(currentConfigurationProvider)
                          .value!
                          .ingredients
                          .contains(ingredient);

                      return Material(
                        type: MaterialType.transparency,
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 4,
                          ),
                          selected: hasIngredient,
                          selectedColor: Theme.of(context).colorScheme.primary,
                          onTap: () {
                            if (ref
                                .read(currentConfigurationProvider.notifier)
                                .hasIngredient(ingredient)) {
                              ref
                                  .read(currentConfigurationProvider.notifier)
                                  .removeIngredient(ingredient);
                            } else {
                              ref
                                  .read(currentConfigurationProvider.notifier)
                                  .addIngredient(ingredient);
                            }
                          },
                          leading: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.network(
                              "http://${Constants.BASE_API_URL}/${ingredient.imgSrc}",
                              fit: BoxFit.cover,
                              width: 48,
                              height: 48,
                            ),
                          ),
                          title: Text(ingredient.name),
                          subtitle: Text(CurrencyFormatter.format(
                              ingredient.price, currencyFormatterSettings)),
                          trailing: hasIngredient ? const Icon(Icons.check) : null,
                        ),
                      );
                    },
                  ),
                ],
              ),
            const SizedBox(height: 128)
          ],
        ),
      ),
    );
  }
}
