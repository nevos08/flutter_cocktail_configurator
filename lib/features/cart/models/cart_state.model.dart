import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';

part 'cart_state.model.freezed.dart';

part 'cart_state.model.g.dart';

@freezed
class CartState with _$CartState {
  factory CartState({
    @Default([]) List<CartConfiguration> items,
    double? discount,
    String? discountCode,
  }) = _CartState;

  factory CartState.fromJson(Map<String, dynamic> json) => _$CartStateFromJson(json);
}
