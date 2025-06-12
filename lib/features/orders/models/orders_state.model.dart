import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order.model.dart';

part 'orders_state.model.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  factory OrdersState({
    required List<Order> orders,
  }) = _OrdersState;
}
