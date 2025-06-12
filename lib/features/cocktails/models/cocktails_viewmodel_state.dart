import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktails_overview_configuration.model.dart';

part 'cocktails_viewmodel_state.freezed.dart';

@freezed
class CocktailsViewModelState with _$CocktailsViewModelState {
  factory CocktailsViewModelState({
    required List<CocktailsOverviewConfiguration> configurations,
    required List<CocktailsOverviewConfiguration> filteredConfigurations,
    @Default(false) bool showBookmarkedOnly,
  }) = _CocktailsViewModelState;
}
