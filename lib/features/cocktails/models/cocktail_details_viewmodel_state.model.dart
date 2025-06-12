import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktails_overview_configuration.model.dart';

part 'cocktail_details_viewmodel_state.model.freezed.dart';

@freezed
class CocktailDetailsViewModelState with _$CocktailDetailsViewModelState {
  factory CocktailDetailsViewModelState({
    required CocktailsOverviewConfiguration configuration,
  }) = _CocktailDetailsViewModelState;
}
