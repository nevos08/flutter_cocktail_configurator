import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/configurator.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/presets/preset_list_view.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/presets/share_bottom_sheet.dart';

class PresetsScreen extends ConsumerStatefulWidget {
  const PresetsScreen({super.key});

  @override
  ConsumerState<PresetsScreen> createState() => _PresetsScreenState();
}

class _PresetsScreenState extends ConsumerState<PresetsScreen> {
  void _useSharedId() async {
    final success = await showModalBottomSheet<bool?>(
      context: context,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => const ShareBottomSheet(),
    );

    ScaffoldMessenger.of(context).clearSnackBars();
    if (success == true) {
      ref.read(configuratorViewModelProvider.notifier).nextPage();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Die geteilte Konfiguration wurde erfolgreich geladen."),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Der geteilte Code konnte nicht geladen werden."),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Text(
              "Wenn du möchtest, kannst du dir nun einen unserer Klassiker als Vorlage auswählen. Aber Achtung: Durch dasAuswählen eines Klassikers wird deine aktuelle Konfiguration gelöscht."),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Theme.of(context).colorScheme.onSecondary,
                iconColor: Theme.of(context).colorScheme.onSecondary,
              ),
              onPressed: () {
                ref.read(configuratorViewModelProvider.notifier).nextPage();
              },
              icon: const Icon(Icons.keyboard_arrow_right),
              label: Text("Ohne Vorlage fortfahren", style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.surfaceDim,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  iconColor: Theme.of(context).colorScheme.onSecondary),
              onPressed: () {
                _useSharedId();
              },
              icon: const Icon(Icons.share),
              label: Text("Geteilten Code eingeben", style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
          const SizedBox(height: 8),
          const PresetListView()
        ],
      ),
    );
  }
}
