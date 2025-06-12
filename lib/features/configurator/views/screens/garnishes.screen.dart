import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/garnish.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/garnishes_list_view.dart';

class GarnishesScreen extends ConsumerStatefulWidget {
  const GarnishesScreen({super.key});

  @override
  ConsumerState<GarnishesScreen> createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends ConsumerState<GarnishesScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModelState = ref.watch(garnishesViewModelProvider);
    Map<int, GlobalKey> garnishesKeys = {};

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("Im zweiten Schritt wählst du die Garnituren deines Cocktails aus."),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: viewModelState.when(
              data: (state) {
                for (final category in state.categories) {
                  garnishesKeys[category.id] = GlobalKey();
                }

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 8,
                          children: [
                            for (final category in state.categories)
                              FilterChip(
                                label: Text(category.name),
                                onSelected: (value) {
                                  Scrollable.ensureVisible(
                                      garnishesKeys[category.id]!.currentContext!);
                                },
                                selected: false,
                              ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    GarnishesListView(garnishesKeys: garnishesKeys)
                  ],
                );
              },
              error: (err, stackTrace) {
                print(err);
                return const Center(
                  child: Text("Error occured."),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
