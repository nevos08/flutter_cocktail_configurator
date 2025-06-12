import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/sizes_list_view.dart';

class SizeScreen extends ConsumerWidget {
  const SizeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 16,
        children: [
          Text("Wähle die gewünschte Größe deines Cocktails aus."),
          Expanded(
            child: SizesListView(),
          ),
        ],
      ),
    );
  }
}
