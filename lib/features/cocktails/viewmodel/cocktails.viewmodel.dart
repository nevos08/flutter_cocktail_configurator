import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktails_overview_configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktails_viewmodel_state.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/repositories/cocktails.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cocktails.viewmodel.g.dart';

@riverpod
class CocktailsViewModel extends _$CocktailsViewModel {
  @override
  Future<CocktailsViewModelState> build() async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) {
      throw Exception("No token found");
    }

    final configurations =
        await ref.read(cocktailsRepositoryProvider).getCocktailConfigurations(token);

    if (configurations == null) {
      throw Exception("Failed to fetch configurations");
    }

    return CocktailsViewModelState(
      configurations: configurations,
      filteredConfigurations: state.value?.showBookmarkedOnly == true
          ? configurations.where((element) => element.isFavorite).toList()
          : configurations,
      showBookmarkedOnly: state.value?.showBookmarkedOnly ?? false,
    );
  }

  void _filterConfigurations() {
    if (!state.hasValue) return;

    List<CocktailsOverviewConfiguration> filteredConfigurations = [...state.value!.configurations];

    if (state.value!.showBookmarkedOnly) {
      filteredConfigurations =
          filteredConfigurations.where((element) => element.isFavorite).toList();
    }

    state = AsyncValue.data(state.value!.copyWith(
      filteredConfigurations: filteredConfigurations,
    ));
  }

  void setBookmarkFilter(bool showBookmarkedOnly) {
    state = AsyncValue.data(state.value!.copyWith(
      showBookmarkedOnly: showBookmarkedOnly,
    ));

    _filterConfigurations();
  }

  Future<bool> setConfigurationBookmarked(String configurationId, bool isFavorite) async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return false;

    final success = await ref.read(cocktailsRepositoryProvider).setConfigurationBookmark(
          token,
          configurationId,
          isFavorite,
        );

    if (success) {
      ref.invalidateSelf();
    }

    return success;
  }
}
