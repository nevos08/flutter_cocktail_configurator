import 'dart:convert';

import 'package:mib33_webframeworks_prototyp_2/features/cart/models/cart_state.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'cart.provider.g.dart';

@Riverpod(keepAlive: true)
class Cart extends _$Cart {
  late SharedPreferences _prefs;

  @override
  Future<CartState> build() async {
    _prefs = await SharedPreferences.getInstance();
    final cartJson = _prefs.getString("cart");
    if (cartJson == null) {
      return CartState();
    }

    return CartState.fromJson(jsonDecode(cartJson));
  }

  Future<void> saveToPrefs() async {
    final cartJson = state.value!.toJson();
    await _prefs.setString("cart", jsonEncode(cartJson));
  }

  void addToCart(CartConfiguration configuration) {
    state = AsyncValue.data(state.value!.copyWith(items: [...state.value!.items, configuration]));
    saveToPrefs();
  }

  void removeFromCart(CartConfiguration configuration) {
    state = AsyncValue.data(state.value!
        .copyWith(items: state.value!.items.where((element) => element != configuration).toList()));
    saveToPrefs();
  }

  void setDiscount(String? discountCode, double? discount) {
    state = AsyncValue.data(state.value!.copyWith(discount: discount, discountCode: discountCode));
    saveToPrefs();
  }

  void clearCart() {
    state = AsyncValue.data(state.value!.copyWith(items: [], discount: null, discountCode: null));
    saveToPrefs();
  }
}
