import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/add_to_cart_bottom_sheet.dart';

class AddToCartButton extends ConsumerStatefulWidget {
  const AddToCartButton({super.key});

  @override
  ConsumerState<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends ConsumerState<AddToCartButton> {
  Future<void> _addToCart() async {
    final done = await showModalBottomSheet<bool>(
      context: context,
      useRootNavigator: true,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => const AddToCartBottomSheet(),
    );

    if (done == null || done == false) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Beim Hinzufügen zum Warenkorb ist ein Fehler aufgetreten.")));
      return;
    }

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Das Produkt wurde erfolgreich zum Warenkorb hinzugefügt.")));

    context.goNamed("landingpage");
  }

  @override
  Widget build(BuildContext context) {
    final currentConfiguration = ref.watch(currentConfigurationProvider).value!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: FilledButton.icon(
          onPressed: currentConfiguration.bases.isNotEmpty &&
                  currentConfiguration.ingredients.isNotEmpty &&
                  currentConfiguration.garnishes.isNotEmpty
              ? _addToCart
              : null,
          icon: const Icon(Icons.add_shopping_cart),
          label: const Text("In den Warenkorb")),
    );
  }
}
