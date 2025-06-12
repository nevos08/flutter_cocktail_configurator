import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/viewmodel/cart.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/configurator.viewmodel.dart';

class AddToCartBottomSheet extends ConsumerStatefulWidget {
  const AddToCartBottomSheet({super.key});

  @override
  ConsumerState<AddToCartBottomSheet> createState() => _AddToCartBottomSheetState();
}

class _AddToCartBottomSheetState extends ConsumerState<AddToCartBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  bool _isLoading = false;
  String _name = "";
  String _description = "";

  void _generateNameAndDescription() async {
    setState(() {
      _isLoading = true;
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Stay tuned! Wir generieren einem Namen und eine Beschreibung für dich.")));

    final result =
        await ref.read(configuratorViewModelProvider.notifier).generateNameAndDescription();

    if (context.mounted) {
      ScaffoldMessenger.of(context).clearSnackBars();
    }
    if (result == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Es konnte kein Name und Beschreibung generiert werden.",
            ),
          ),
        );
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Name und Beschreibung wurden generiert."),
          ),
        );
      }

      _nameController.text = result.name;
      _descriptionController.text = result.description;
    }

    setState(() {
      _isLoading = false;
    });
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    _formKey.currentState!.save();

    final configuration = ref.read(currentConfigurationProvider).value!;
    ref.read(cartViewModelProvider.notifier).addToCart(CartConfiguration(
          name: _name,
          description: _description,
          size: configuration.size,
          bases: configuration.bases,
          ingredients: configuration.ingredients,
          garnishes: configuration.garnishes,
        ));

    context.pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final configuration = ref.watch(currentConfigurationProvider).value!;

    _nameController.text = configuration.name;
    _descriptionController.text = configuration.description;

    return Padding(
      padding: EdgeInsets.only(
        left: 32,
        right: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom + 48,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "In den Warenkorb",
                  style:
                      Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
                IconButton.filled(
                  onPressed: !_isLoading ? _generateNameAndDescription : null,
                  icon: _isLoading
                      ? const CircularProgressIndicator.adaptive()
                      : const Icon(Icons.auto_awesome),
                )
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              autocorrect: false,
              decoration: const InputDecoration(label: Text("Name"), border: OutlineInputBorder()),
              onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
              maxLength: 50,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Bitte gib deinen Namen ein.";
                }

                if (value.length < 3) {
                  return "Der Name muss mindestens 3 Zeichen lang sein.";
                }

                if (value.length > 50) {
                  return "Der Name darf maximal 50 Zeichen lang sein.";
                }

                return null;
              },
              onSaved: (newValue) => _name = newValue!,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              autocorrect: false,
              decoration: const InputDecoration(
                label: Text("Beschreibung"),
                border: OutlineInputBorder(),
              ),
              onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
              maxLength: 255,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Bitte gib deinen Namen ein.";
                }

                if (value.length < 3) {
                  return "Die Beschreibung muss mindestens 3 Zeichen lang sein.";
                }

                if (value.length > 255) {
                  return "Die Beschreibung darf maximal 255 Zeichen lang sein.";
                }

                return null;
              },
              onSaved: (newValue) => _description = newValue!,
            ),
            const SizedBox(height: 16),

            FilledButton.icon(
                onPressed: _submit,
                icon: const Icon(Icons.add_shopping_cart),
                label: const Text("In den Warenkorb"))
            // const SizedBox(height: 32)
          ],
        ),
      ),
    );
  }
}
