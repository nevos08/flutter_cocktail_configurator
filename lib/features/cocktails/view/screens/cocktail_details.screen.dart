import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/view/widgets/cocktail_details/share_bottom_sheet.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/viewmodel/cocktail_details.viewmodel.dart';

class CocktailDetailsScreen extends ConsumerWidget {
  const CocktailDetailsScreen({super.key, required this.configurationId});

  final String configurationId;

  void _share(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (context) => ShareBottomSheet(configurationId: configurationId),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(cocktailDetailsViewModelProvider(configurationId));

    return Scaffold(
      body: SafeArea(
        child: asyncState.when(
          data: (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        spacing: 16,
                        children: [
                          IconButton.filled(
                              icon: const Icon(Icons.keyboard_arrow_left),
                              onPressed: () {
                                context.pop();
                              }),
                          Expanded(
                            child: Text(
                              state.configuration.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              ref
                                  .read(cocktailDetailsViewModelProvider(configurationId).notifier)
                                  .setConfigurationBookmarked(
                                      configurationId, !state.configuration.isFavorite);
                            },
                            icon: state.configuration.isFavorite
                                ? const Icon(Icons.favorite)
                                : const Icon(Icons.favorite_outline)),
                        IconButton(onPressed: () => _share(context), icon: const Icon(Icons.share)),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(state.configuration.description),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                                  child: Text(
                                    "Basen",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                for (final base in state.configuration.bases)
                                  ListTile(
                                    leading: Container(
                                      clipBehavior: Clip.hardEdge,
                                      decoration:
                                          BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                      child: Image.network(
                                        "https://${Constants.BASE_API_URL}${base.imgSrc}",
                                        width: 48,
                                        height: 48,
                                      ),
                                    ),
                                    title: Text(base.name),
                                    subtitle: Text("Alkohol: ${base.alcohol.toString()}%"),
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                                  child: Text(
                                    "Zutaten",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                for (final ingredient in state.configuration.ingredients)
                                  ListTile(
                                    leading: Container(
                                      clipBehavior: Clip.hardEdge,
                                      decoration:
                                          BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                      child: Image.network(
                                        "https://${Constants.BASE_API_URL}${ingredient.imgSrc}",
                                        width: 48,
                                        height: 48,
                                      ),
                                    ),
                                    title: Text(ingredient.name),
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                                  child: Text(
                                    "Garnituren",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                for (final garnish in state.configuration.garnishes)
                                  ListTile(
                                    leading: Container(
                                      clipBehavior: Clip.hardEdge,
                                      decoration:
                                          BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                      child: Image.network(
                                        "https://${Constants.BASE_API_URL}${garnish.imgSrc}",
                                        width: 48,
                                        height: 48,
                                      ),
                                    ),
                                    title: Text(garnish.name),
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          error: (err, _) {
            print(err);
            return Column(
              children: [
                IconButton.filled(
                    icon: const Icon(Icons.keyboard_arrow_left),
                    onPressed: () {
                      context.pop();
                    }),
                const Expanded(
                  child:
                      Center(child: Text("Beim Abrufen des Cocktails ist ein Fehler aufgetreten.")),
                )
              ],
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      ),
    );
  }
}
