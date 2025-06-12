import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/ingredient_category.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/repositories/ingredient.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ingredient.viewmodel.g.dart';

class IngredientViewModelState {
  IngredientViewModelState({
    required this.ingredients,
    required this.filteredIngredients,
    required this.categories,
  });

  List<Ingredient> ingredients = [];
  List<Ingredient> filteredIngredients = [];
  List<IngredientCategory> categories = [];

  IngredientViewModelState copyWith({
    List<Ingredient>? ingredients,
    List<Ingredient>? filteredIngredients,
    List<IngredientCategory>? categories,
  }) {
    return IngredientViewModelState(
      ingredients: ingredients ?? this.ingredients,
      filteredIngredients: filteredIngredients ?? this.filteredIngredients,
      categories: categories ?? this.categories,
    );
  }
}

@riverpod
class IngredientViewModel extends _$IngredientViewModel {
  @override
  Future<IngredientViewModelState> build() async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) {
      return IngredientViewModelState(
          ingredients: [], filteredIngredients: [], categories: []);
    }

    final ingredients =
        await ref.read(ingredientRepositoryProvider).getIngredients(token);
    final categories =
        await ref.read(ingredientRepositoryProvider).getCategories(token);

    return IngredientViewModelState(
        ingredients: ingredients,
        filteredIngredients: ingredients,
        categories: categories);
  }

  List<Ingredient> getIngredientsByCategory(int categoryId) {
    if (!state.hasValue) return [];

    return state.value!.ingredients
        .where((ingredient) => ingredient.ingredientCategoryId == categoryId)
        .toList();
  }
}
