import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/repositories/base.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'base.viewmodel.g.dart';

class BaseViewModelState {
  BaseViewModelState({
    required this.bases,
    required this.filteredBases,
    this.searchQuery = "",
    this.isAlcoholFree = false,
  });

  List<Base> bases = [];
  List<Base> filteredBases = [];
  String searchQuery = "";
  bool isAlcoholFree = false;

  BaseViewModelState copyWith({
    List<Base>? bases,
    List<Base>? filteredBases,
    String? searchQuery,
    bool? isAlcoholFree,
  }) {
    return BaseViewModelState(
      bases: bases ?? this.bases,
      filteredBases: filteredBases ?? this.filteredBases,
      searchQuery: searchQuery ?? this.searchQuery,
      isAlcoholFree: isAlcoholFree ?? this.isAlcoholFree,
    );
  }
}

@riverpod
class BaseViewModel extends _$BaseViewModel {
  @override
  Future<BaseViewModelState> build() async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return BaseViewModelState(bases: [], filteredBases: []);

    final bases = await ref.read(baseRepositoryProvider).getBases(token);
    return BaseViewModelState(bases: bases, filteredBases: bases);
  }

  void _applyFilters() {
    final stateData = state.asData!.value;
    final filteredBases = stateData.bases
        .where((base) =>
            base.name
                .toLowerCase()
                .contains(stateData.searchQuery.toLowerCase()) &&
            (stateData.isAlcoholFree ? base.alcohol == 0 : true))
        .toList();

    state = AsyncValue.data(stateData.copyWith(filteredBases: filteredBases));
  }

  void setSearchQuery(String searchQuery) {
    state =
        AsyncValue.data(state.asData!.value.copyWith(searchQuery: searchQuery));
    _applyFilters();
  }

  void setIsAlcoholFree(bool isAlcoholFree) {
    state = AsyncValue.data(
        state.asData!.value.copyWith(isAlcoholFree: isAlcoholFree));
    _applyFilters();
  }
}
