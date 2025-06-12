import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/delegates/search_delegate.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/view/widgets/cocktails/cocktail_list_item.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/viewmodel/cocktails.viewmodel.dart';

class CocktailsScreen extends ConsumerWidget {
  const CocktailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(cocktailsViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                spacing: 16,
                children: [
                  IconButton.filled(
                      icon: const Icon(Icons.keyboard_arrow_left),
                      onPressed: () {
                        if (context.canPop()) {
                          context.pop();
                        } else {
                          context.goNamed("landingpage");
                        }
                      }),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Meine Cocktails",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Eine Übersicht deiner Cocktails",
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  if (asyncState.hasValue)
                    IconButton(
                      onPressed: () async {
                        await showSearch(
                          context: context,
                          delegate: CocktailsSearchDelegate(
                              configurations: asyncState.value!.configurations),
                        );
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 32,
                      ),
                    )
                ],
              ),
            ),
            asyncState.when(data: (state) {
              if (state.configurations.isEmpty) {
                return const Expanded(
                  child: Center(
                    child: Text("Keine Cocktails gefunden"),
                  ),
                );
              }

              return Expanded(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Nur Favoriten anzeigen?"),
                            Switch(
                                value: state.showBookmarkedOnly,
                                onChanged: (value) => ref
                                    .read(cocktailsViewModelProvider.notifier)
                                    .setBookmarkFilter(value))
                          ],
                        )),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.filteredConfigurations.length,
                        itemBuilder: (context, index) =>
                            CocktailListItem(configuration: state.filteredConfigurations[index]),
                      ),
                    ),
                  ],
                ),
              );
            }, error: (err, _) {
              print(err);
              return const Expanded(
                child: Center(
                  child: Text("Beim Abrufen der Cocktails ist ein Fehler aufgetreten."),
                ),
              );
            }, loading: () {
              return const Expanded(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
