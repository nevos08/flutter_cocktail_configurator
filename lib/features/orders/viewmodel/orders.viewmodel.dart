import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/orders_state.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/repositories/orders.repository.dart';

part 'orders.viewmodel.g.dart';

@riverpod
class OrdersViewModel extends _$OrdersViewModel {
  @override
  Future<OrdersState> build() async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) {
      throw Exception("No token found");
    }

    final orders = await ref.read(ordersRepositoryProvider).getOrders(token);
    if (orders == null) {
      throw Exception("Failed to fetch orders");
    }

    return OrdersState(orders: orders);
  }
}
