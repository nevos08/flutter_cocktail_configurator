import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/base.viewmodel.dart';

class BasesGridView extends ConsumerWidget {
  const BasesGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(baseViewModelProvider);
    final currentConfigurationNotifier = ref.watch(currentConfigurationProvider.notifier);
    final currentConfiguration = ref.watch(currentConfigurationProvider).value!;

    return viewModelState.when(
      data: (data) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: data.filteredBases.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: 275,
              ),
              itemBuilder: (context, index) {
                final base = data.filteredBases[index];
                final isActive = currentConfiguration.bases.contains(base);

                return Card(
                  color: isActive
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surfaceDim,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: InkWell(
                    onTap: () {
                      if (currentConfigurationNotifier.hasBase(base)) {
                        currentConfigurationNotifier.removeBase(base);
                      } else {
                        currentConfigurationNotifier.addBase(base);
                      }
                    },
                    borderRadius: BorderRadius.circular(24),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        spacing: 4,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.network(
                              Uri.https(Constants.BASE_API_URL, base.imgSrc).toString(),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                          Text(
                            base.name,
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: isActive ? Theme.of(context).colorScheme.onPrimary : null),
                          ),
                          Text(
                            "Alkohol: ${base.alcohol.toInt().toString()}%",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: isActive ? Theme.of(context).colorScheme.onPrimary : null),
                          ),
                          Text(
                            CurrencyFormatter.format(
                              base.price,
                              currencyFormatterSettings,
                              decimal: 2,
                              enforceDecimals: true,
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.green, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
      loading: () {
        return const Center(child: CircularProgressIndicator.adaptive());
      },
      error: (error, stackTrace) => Text("Error: $error"),
    );
  }
}
