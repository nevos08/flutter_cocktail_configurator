import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktail_details_viewmodel_state.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/repositories/cocktails.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cocktail_details.viewmodel.g.dart';

@riverpod
class CocktailDetailsViewModel extends _$CocktailDetailsViewModel {
  @override
  Future<CocktailDetailsViewModelState> build(String configurationId) async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) {
      throw Exception("No token found");
    }

    final configuration =
        await ref.read(cocktailsRepositoryProvider).getConfigurationById(token, configurationId);

    return CocktailDetailsViewModelState(configuration: configuration);
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

  Future<String?> createShareableId(String configurationId) async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return null;

    try {
      final shareableId =
          await ref.read(cocktailsRepositoryProvider).createShareableId(token, configurationId);

      return shareableId;
    } catch (err) {
      print(err);
    }

    return null;
  }
}
