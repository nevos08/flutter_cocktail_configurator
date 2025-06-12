import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/garnish.viewmodel.dart';

class GarnishesListView extends ConsumerWidget {
  const GarnishesListView({super.key, required this.garnishesKeys});

  final Map<int, GlobalKey> garnishesKeys;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(garnishesViewModelProvider).value!;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            for (final category in state.categories)
              Column(
                key: garnishesKeys[category.id],
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
                        .read(garnishesViewModelProvider.notifier)
                        .getGarnishesByCategory(category.id)
                        .length,
                    itemBuilder: (context, index) {
                      final garnish = ref
                          .read(garnishesViewModelProvider.notifier)
                          .getGarnishesByCategory(category.id)[index];

                      final hasGarnish = ref
                          .watch(currentConfigurationProvider)
                          .value!
                          .garnishes
                          .contains(garnish);

                      return Material(
                        type: MaterialType.transparency,
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 4,
                          ),
                          selected: hasGarnish,
                          selectedColor: Theme.of(context).colorScheme.primary,
                          onTap: () {
                            if (ref
                                .read(currentConfigurationProvider.notifier)
                                .hasGarnish(garnish)) {
                              ref
                                  .read(currentConfigurationProvider.notifier)
                                  .removeGarnish(garnish);
                            } else {
                              ref.read(currentConfigurationProvider.notifier).addGarnish(garnish);
                            }
                          },
                          leading: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.network(
                              "http://${Constants.BASE_API_URL}/${garnish.imgSrc}",
                              fit: BoxFit.cover,
                              width: 48,
                              height: 48,
                            ),
                          ),
                          title: Text(garnish.name),
                          subtitle: Text(
                              CurrencyFormatter.format(garnish.price, currencyFormatterSettings)),
                          trailing: hasGarnish ? const Icon(Icons.check) : null,
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
