import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/size.viewmodel.dart';

class SizesListView extends ConsumerWidget {
  const SizesListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sizesAsyncValue = ref.watch(sizeViewModelProvider);
    final currentConfiguration = ref.watch(currentConfigurationProvider).value!;
    final currentConfigurationNotifier = ref.watch(currentConfigurationProvider.notifier);

    return sizesAsyncValue.when(
      data: (sizes) => ListView.builder(
        itemCount: sizes.length,
        itemBuilder: (ctx, index) {
          final isActive = sizes[index].id == currentConfiguration.size.id;
          return Card(
            color: isActive
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.surfaceDim,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {
                final success = currentConfigurationNotifier.setSize(sizes[index]);
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(success
                        ? "Die Größe des Cocktails wurde auf ${sizes[index].name} geändert."
                        : "Die Größe des Cocktails konnte nicht auf ${sizes[index].name} geändert werden."),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 8,
                  children: [
                    Text(
                      sizes[index].name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isActive
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.onSurface),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Milliliter",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        ),
                        Text(
                          "${sizes[index].metricSize}ml",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Max. Basen",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        ),
                        Text(
                          "${sizes[index].maxBases}",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Max. Zutaten",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        ),
                        Text(
                          "${sizes[index].maxIngredients}",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Max. Garnituren",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        ),
                        Text(
                          "${sizes[index].maxGarnishes}",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      error: (error, _) => const Center(
        child: Text("ERROR"),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
