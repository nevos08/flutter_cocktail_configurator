import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/base.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/bases_grid_view.dart';

class BasesScreen extends ConsumerWidget {
  const BasesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(baseViewModelProvider);

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                "Im ersten Schritt wählst du die Basis deines Cocktails aus. Hier legst du den perfekten Grundstein für dein individuelles Geschmackserlebnis!"),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(hintText: "Suchbegriff eingeben..."),
                    onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                    onChanged: (value) {
                      ref.read(baseViewModelProvider.notifier).setSearchQuery(value);
                    },
                  ),
                ),
                const SizedBox(width: 32),
                const Text("Alkoholfrei?"),
                Checkbox(
                  value: viewModelState.asData?.value.isAlcoholFree ?? false,
                  onChanged: (selected) {
                    ref.read(baseViewModelProvider.notifier).setIsAlcoholFree(selected!);
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          const BasesGridView()
        ],
      ),
    );
  }
}
