import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order.model.dart';

part 'order_details_state.model.freezed.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  factory OrderDetailsState({
    required Order order,
  }) = _OrderDetailsState;
}
