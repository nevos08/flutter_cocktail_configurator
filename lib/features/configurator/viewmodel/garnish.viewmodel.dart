import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/garnish_category.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/repositories/garnish.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'garnish.viewmodel.g.dart';

class GarnishViewModelState {
  GarnishViewModelState({
    required this.garnishes,
    required this.filteredGarnishes,
    required this.categories,
  });

  List<Garnish> garnishes = [];
  List<Garnish> filteredGarnishes = [];
  List<GarnishCategory> categories = [];

  GarnishViewModelState copyWith({
    List<Garnish>? ingredients,
    List<Garnish>? filteredIngredients,
    List<GarnishCategory>? categories,
  }) {
    return GarnishViewModelState(
      garnishes: garnishes ?? this.garnishes,
      filteredGarnishes: filteredGarnishes ?? this.filteredGarnishes,
      categories: categories ?? this.categories,
    );
  }
}

@riverpod
class GarnishesViewModel extends _$GarnishesViewModel {
  @override
  Future<GarnishViewModelState> build() async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) {
      return GarnishViewModelState(garnishes: [], filteredGarnishes: [], categories: []);
    }

    final garnishes = await ref.read(garnishRepositoryProvider).getGarnishes(token);
    final categories = await ref.read(garnishRepositoryProvider).getCategories(token);

    return GarnishViewModelState(
        garnishes: garnishes, filteredGarnishes: garnishes, categories: categories);
  }

  List<Garnish> getGarnishesByCategory(int categoryId) {
    if (!state.hasValue) return [];

    return state.value!.garnishes
        .where((garnish) => garnish.garnishCategoryId == categoryId)
        .toList();
  }
}
