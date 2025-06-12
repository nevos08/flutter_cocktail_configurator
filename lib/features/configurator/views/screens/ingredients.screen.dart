import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/ingredient.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/ingredients_list_view.dart';

class IngredientsScreen extends ConsumerStatefulWidget {
  const IngredientsScreen({super.key});

  @override
  ConsumerState<IngredientsScreen> createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends ConsumerState<IngredientsScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModelState = ref.watch(ingredientViewModelProvider);
    Map<int, GlobalKey> ingredientKeys = {};

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("Im zweiten Schritt wählst du die Zutaten deines Cocktails aus."),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: viewModelState.when(
              data: (state) {
                for (final category in state.categories) {
                  ingredientKeys[category.id] = GlobalKey();
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
                                      ingredientKeys[category.id]!.currentContext!);
                                },
                                selected: false,
                              ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    IngredientsListView(ingredientKeys: ingredientKeys)
                  ],
                );
              },
              error: (error, stackTrace) => const Center(
                child: Text("Error occured."),
              ),
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
