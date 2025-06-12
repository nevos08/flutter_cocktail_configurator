import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/viewmodel/cocktail_details.viewmodel.dart';

class ShareBottomSheet extends ConsumerStatefulWidget {
  const ShareBottomSheet({super.key, required this.configurationId});

  final String configurationId;

  @override
  ConsumerState<ShareBottomSheet> createState() => _ShareBottomSheetState();
}

class _ShareBottomSheetState extends ConsumerState<ShareBottomSheet> {
  final _controller = TextEditingController();

  bool _isLoading = false;
  String? shareableId;

  void _submit() async {
    setState(() {
      _isLoading = true;
    });

    final newShareableId = await ref
        .read(cocktailDetailsViewModelProvider(widget.configurationId).notifier)
        .createShareableId(widget.configurationId);

    if (newShareableId == null) {
      setState(() {
        _isLoading = false;
      });

      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Beim Teilen ist ein Fehler aufgetreten")));
      context.pop();
      return;
    }

    setState(() {
      shareableId = newShareableId;
      _controller.text = newShareableId;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 16, right: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Konfiguration teilen",
            style:
                Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text("Bist du sicher, dass du diesen Cocktail teilen möchtest?"),
          const SizedBox(height: 24),
          if (shareableId == null)
            FilledButton(
                onPressed: !_isLoading ? _submit : null, child: const Text("Cocktail teilen")),
          if (shareableId != null)
            Row(
              spacing: 16,
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,
                      label: Text("Teilbare ID"),
                    ),
                    readOnly: true,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: shareableId!));
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(content: Text("ID kopiert")));
                      context.pop();
                    },
                    icon: const Icon(Icons.copy))
              ],
            ),
          const SizedBox(height: 64),
        ],
      ),
    );
  }
}
