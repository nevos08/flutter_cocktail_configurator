import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/view/widgets/order_list.dart';

class OrdersScreen extends ConsumerWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                  Text("Meine Bestellungen",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            const OrderList()
          ],
        ),
      ),
    );
  }
}
