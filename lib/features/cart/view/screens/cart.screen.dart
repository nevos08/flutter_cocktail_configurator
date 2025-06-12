import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/view/widgets/cart_item.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/viewmodel/cart.viewmodel.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool _isSubmitting = false;
  final _discountCodeController = TextEditingController();

  void _applyDiscountCode() async {
    final discountCode = _discountCodeController.text;
    if (discountCode.isEmpty) return;

    final success = await ref.read(cartViewModelProvider.notifier).applyDiscount(discountCode);

    ScaffoldMessenger.of(context).clearSnackBars();
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Der Rabattcode wurde erfolgreich angewendet.")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Der Rabattcode ist ungültig.")));
    }

    _discountCodeController.clear();
  }

  void _clearDiscountCode() {
    ref.read(cartViewModelProvider.notifier).clearDiscountCode();
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Der Rabattcode wurde entfernt.")));
  }

  void _submit() async {
    setState(() {
      _isSubmitting = true;
    });

    final success = await ref.read(cartViewModelProvider.notifier).submitOrder();

    ScaffoldMessenger.of(context).clearSnackBars();
    if (success) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Deine Bestellung wurde abgeschickt.")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Beim Abschicken der Bestellung ist ein Fehler aufgetreten.")));
    }

    setState(() {
      _isSubmitting = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final asyncCartState = ref.watch(cartViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                spacing: 16,
                children: [
                  IconButton.filled(
                      icon: const Icon(Icons.keyboard_arrow_left),
                      onPressed: () {
                        context.pop();
                      }),
                  Text("Warenkorb",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: asyncCartState.when(
                data: (state) {
                  if (state.items.isEmpty) {
                    return const Center(
                      child: Text("Der Warenkorb ist leer."),
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(
                      itemCount: state.items.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: CartItem(configuration: state.items[index]),
                      ),
                    ),
                  );
                },
                error: (err, _) {
                  return const Center(
                    child: Text("Beim Laden des Warenkorbs ist ein Fehler aufgetreten."),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator.adaptive()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gesamstumme",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      asyncCartState.when(
                        data: (state) => Text(
                            CurrencyFormatter.format(
                                ref.read(cartViewModelProvider.notifier).getTotalPrice(),
                                currencyFormatterSettings),
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold)),
                        error: (error, stackTrace) => const Text("0,00 €"),
                        loading: () => const CircularProgressIndicator.adaptive(),
                      )
                    ],
                  ),
                  if (asyncCartState.hasValue && asyncCartState.value!.discount == null)
                    const SizedBox(height: 16),
                  if (asyncCartState.hasValue && asyncCartState.value!.discount == null)
                    Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _discountCodeController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Rabattcode"),
                                isDense: true),
                            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                          ),
                        ),
                        IconButton.filledTonal(
                            onPressed: _applyDiscountCode, icon: const Icon(Icons.check))
                      ],
                    ),
                  if (asyncCartState.hasValue && asyncCartState.value!.discount != null)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Divider(),
                        Row(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rabattcode:",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              spacing: 4,
                              children: [
                                IconButton(
                                    onPressed: _clearDiscountCode, icon: const Icon(Icons.clear)),
                                Text(asyncCartState.value!.discountCode!),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rabattierter Preis:",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(CurrencyFormatter.format(
                                ref
                                    .read(cartViewModelProvider.notifier)
                                    .getTotalPriceWithDiscount(),
                                currencyFormatterSettings))
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                      ],
                    ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                        onPressed: (!_isSubmitting &&
                                asyncCartState.hasValue &&
                                asyncCartState.value!.items.isNotEmpty)
                            ? _submit
                            : null,
                        child: _isSubmitting
                            ? const SizedBox(
                                height: 16, width: 16, child: CircularProgressIndicator.adaptive())
                            : const Text("Bestellung abschließen")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
