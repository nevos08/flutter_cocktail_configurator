import 'package:mib33_webframeworks_prototyp_2/core/providers/cart.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/repositories/cart.repository.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/models/cart_state.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart.viewmodel.g.dart';

@riverpod
class CartViewModel extends _$CartViewModel {
  @override
  AsyncValue<CartState> build() {
    // We need to check if the cart has loaded.
    return ref.watch(cartProvider);
  }

  void addToCart(CartConfiguration configuration) {
    ref.read(cartProvider.notifier).addToCart(configuration);
  }

  void removeFromCart(CartConfiguration configuration) {
    ref.read(cartProvider.notifier).removeFromCart(configuration);
  }

  double getTotalPrice() {
    if (!state.hasValue) return 0;

    return state.value!.items.fold<double>(0, (previousValue, element) {
      final sumBases =
          element.bases.fold<double>(0, (previousValue, element) => previousValue + element.price);
      final sumIngredients = element.ingredients
          .fold<double>(0, (previousValue, element) => previousValue + element.price);
      final sumGarnishes = element.garnishes
          .fold<double>(0, (previousValue, element) => previousValue + element.price);

      return previousValue + sumBases + sumIngredients + sumGarnishes;
    });
  }

  double getTotalPriceWithDiscount() {
    if (!state.hasValue) return 0;

    final total = state.value!.items.fold<double>(0, (previousValue, element) {
      final sumBases =
          element.bases.fold<double>(0, (previousValue, element) => previousValue + element.price);
      final sumIngredients = element.ingredients
          .fold<double>(0, (previousValue, element) => previousValue + element.price);
      final sumGarnishes = element.garnishes
          .fold<double>(0, (previousValue, element) => previousValue + element.price);

      // final sum = ;
      // if (state.value!.discount != null) {
      //   return sum * (1 - state.value!.discount!);
      // }
      return previousValue + sumBases + sumIngredients + sumGarnishes;
    });

    if (state.value!.discount != null) {
      return total * (1 - state.value!.discount!);
    }

    return total;
  }

  Future<bool> applyDiscount(String discountCode) async {
    if (!state.hasValue) return false;

    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return false;

    final discountData =
        await ref.read(cartRepositoryProvider).checkDiscountCode(token, discountCode);

    if (discountData != null) {
      state = AsyncValue.data(state.value!.copyWith(
        discount: discountData.discount,
        discountCode: discountCode,
      ));
      ref.read(cartProvider.notifier).setDiscount(discountCode, discountData.discount);
    } else {
      ref.read(cartProvider.notifier).setDiscount(null, null);
    }

    return discountData != null;
  }

  void clearDiscountCode() async {
    if (!state.hasValue) return;
    if (state.value!.discountCode == null) return;

    state = AsyncValue.data(state.value!.copyWith(
      discount: null,
      discountCode: null,
    ));

    ref.read(cartProvider.notifier).saveToPrefs();
  }

  Future<bool> submitOrder() async {
    if (!state.hasValue) return false;

    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return false;

    final configurationsToSubmit = state.value!.items
        .map((configuration) => SubmittedConfiguration(
              name: configuration.name,
              description: configuration.description,
              sizeId: configuration.size.id,
              bases: configuration.bases.map((base) => base.id).toList(),
              ingredients: configuration.ingredients.map((ingredient) => ingredient.id).toList(),
              garnishes: configuration.garnishes.map((garnish) => garnish.id).toList(),
            ))
        .toList();

    final discountCode = state.value!.discountCode;
    final success = await ref
        .read(cartRepositoryProvider)
        .submitOrder(token, configurationsToSubmit, discountCode);

    if (success) {
      ref.read(cartProvider.notifier).clearCart();
    }

    return success;
  }
}
