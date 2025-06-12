import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/viewmodel/orders.viewmodel.dart';

class OrderList extends ConsumerWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncOrdersState = ref.watch(ordersViewModelProvider);
    return asyncOrdersState.when(
      data: (state) {
        if (state.orders.isEmpty) {
          return const Center(child: Text("Du hast noch keine Bestellung aufgegeben."));
        }

        return Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: state.orders.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                context.pushNamed("order_details",
                    pathParameters: {"id": state.orders[index].id}, extra: state.orders[index]);
              },
              title: const Text("Bestellung"),
              subtitle: Text(state.orders[index].priceDiscounted != null
                  ? "Datum: ${DateFormat.yMMMd("de_DE").format(state.orders[index].orderDate)}"
                      "\nPreis: ${CurrencyFormatter.format(state.orders[index].priceDiscounted, currencyFormatterSettings)}"
                  : "Datum: ${DateFormat.yMMMd("de_DE").format(state.orders[index].orderDate)}"
                      "\nPreis: ${CurrencyFormatter.format(state.orders[index].price, currencyFormatterSettings)}"),
              isThreeLine: true,
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
        );
      },
      error: (error, stackTrace) => const Center(
        child: Text("Beim Laden der Bestellungen ist ein Fehler aufgetreten."),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
