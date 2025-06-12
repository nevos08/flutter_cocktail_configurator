import 'dart:convert';

import 'package:mib33_webframeworks_prototyp_2/features/configurator/data/default_configuration.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/base.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/garnish.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/ingredient.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/generate_name_and_desc_result.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/repositories/ai.repository.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/size.viewmodel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'current_configuration.provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentConfiguration extends _$CurrentConfiguration {
  @override
  Future<Configuration> build() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawConfiguration = prefs.getString("current_configuration");
      if (rawConfiguration != null) {
        return Configuration.fromJson(jsonDecode(rawConfiguration));
      } else {
        return defaultConfiguration;
      }
    } catch (err) {
      return defaultConfiguration;
    }
  }

  void _saveToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    print(jsonEncode(state.value!));
    prefs.setString("current_configuration", jsonEncode(state.value!.toJson()));
  }

  void setConfiguration(Configuration configuration) {
    print(configuration);
    state = AsyncValue.data(configuration.copyWith());
    _saveToPrefs();
  }

  void resetConfiguration() {
    state = AsyncValue.data(defaultConfiguration);
    ref.invalidate(sizeViewModelProvider);
    _saveToPrefs();
  }

  void setName(String name) {
    state = AsyncValue.data(state.value!.copyWith(name: name));
    _saveToPrefs();
  }

  void setDescription(String description) {
    state = AsyncValue.data(state.value!.copyWith(description: description));
    _saveToPrefs();
  }

  bool setSize(Size size) {
    final currentState = state.value!;

    if (currentState.bases.length >= size.maxBases) {
      return false;
    }

    if (currentState.ingredients.length >= size.maxIngredients) {
      return false;
    }

    if (currentState.garnishes.length >= size.maxGarnishes) {
      return false;
    }

    state = AsyncValue.data(currentState.copyWith(size: size));
    _saveToPrefs();
    return true;
  }

  bool addBase(Base base) {
    final currentState = state.value!;
    if (currentState.bases.length >= currentState.size.maxBases) return false;
    state = AsyncValue.data(currentState.copyWith(bases: {...currentState.bases, base}));
    _saveToPrefs();
    return true;
  }

  void removeBase(Base base) {
    final currentState = state.value!;
    state = AsyncValue.data(currentState.copyWith(
        bases: {...currentState.bases.where((element) => element.id != base.id).toSet()}));
    _saveToPrefs();
  }

  bool hasBase(Base base) {
    final currentState = state.value!;
    return currentState.bases.contains(base);
  }

  bool addIngredient(Ingredient ingredient) {
    final currentState = state.value!;

    if (currentState.ingredients.length >= currentState.size.maxIngredients) return false;
    state = AsyncValue.data(
        currentState.copyWith(ingredients: {...currentState.ingredients, ingredient}));
    _saveToPrefs();

    return true;
  }

  void removeIngredient(Ingredient ingredient) {
    final currentState = state.value!;

    state = AsyncValue.data(currentState.copyWith(ingredients: {
      ...currentState.ingredients.where((element) => element.id != ingredient.id).toSet()
    }));
    _saveToPrefs();
  }

  bool hasIngredient(Ingredient ingredient) {
    return state.value!.ingredients.contains(ingredient);
  }

  bool addGarnish(Garnish garnish) {
    final currentState = state.value!;

    if (currentState.garnishes.length >= currentState.size.maxGarnishes) return false;
    state = AsyncValue.data(currentState.copyWith(garnishes: {...currentState.garnishes, garnish}));
    _saveToPrefs();

    return true;
  }

  void removeGarnish(Garnish garnish) {
    final currentState = state.value!;

    state = AsyncValue.data(currentState.copyWith(garnishes: {
      ...currentState.garnishes.where((element) => element.id != garnish.id).toSet()
    }));
    _saveToPrefs();
  }

  bool hasGarnish(Garnish garnish) {
    return state.value!.garnishes.contains(garnish);
  }

  Future<GenerateNameAndDescResult?> generateNameAndDescription() async {
    if (!state.hasValue) return null;

    try {
      final result = await ref.read(aiRepositoryProvider).generateNameAndDescription(state.value!);

      state = AsyncValue.data(
          state.value!.copyWith(name: result.name, description: result.description));
      _saveToPrefs();

      return result;
    } catch (err) {
      print(err);
      return null;
    }
  }
}
