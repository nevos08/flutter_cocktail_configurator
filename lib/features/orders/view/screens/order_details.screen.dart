import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/view/widgets/order_details/order_info.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/view/widgets/order_details/order_position.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/viewmodel/order_details.viewmodel.dart';

class OrderDetailsScreen extends ConsumerWidget {
  const OrderDetailsScreen({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderDetailsViewModelProvider(order));

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
                  Text("Bestelldetails",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            OrderInfo(
              orderDate: order.orderDate,
              price: order.price,
              discountedPrice: order.priceDiscounted,
              discountCode: order.discountcode,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Cocktails",
                style:
                    Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.order.positions.length,
                itemBuilder: (context, index) => OrderPositionItem(
                  orderPosition: state.order.positions[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
