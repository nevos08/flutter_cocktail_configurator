import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/preset.viewmodel.dart';

class ShareBottomSheet extends ConsumerStatefulWidget {
  const ShareBottomSheet({super.key});

  @override
  ConsumerState<ShareBottomSheet> createState() => _ShareBottomSheetState();
}

class _ShareBottomSheetState extends ConsumerState<ShareBottomSheet> {
  final _codeController = TextEditingController();
  bool _isLoading = false;

  void _submit() async {
    setState(() {
      _isLoading = true;
    });

    final success =
        await ref.read(presetViewModelProvider.notifier).useSharedCode(_codeController.text);

    setState(() {
      _isLoading = false;
    });

    context.pop(success);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 24, right: 24, bottom: MediaQuery.of(context).viewInsets.bottom + 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Geteilten Code eingeben",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
              "Gebe den geteilten Code unten ein, um die Konfiguration eines anderen Nutzers zu laden."),
          const SizedBox(height: 12),
          TextField(
            controller: _codeController,
            decoration: const InputDecoration(
              isDense: true,
              border: OutlineInputBorder(),
              label: Text("Geteilter Code"),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
                onPressed: !_isLoading ? _submit : null, child: const Text("Bestätigen")),
          )
        ],
      ),
    );
  }
}
