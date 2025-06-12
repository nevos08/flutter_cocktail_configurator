import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order_details_state.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_details.viewmodel.g.dart';

@riverpod
class OrderDetailsViewModel extends _$OrderDetailsViewModel {
  @override
  OrderDetailsState build(Order order) {
    return OrderDetailsState(order: order);
  }
}
