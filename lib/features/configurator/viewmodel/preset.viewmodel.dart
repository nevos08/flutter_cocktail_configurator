import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/preset.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/repositories/preset.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preset.viewmodel.g.dart';

@riverpod
class PresetViewModel extends _$PresetViewModel {
  @override
  Future<List<Preset>> build() async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return [];

    final presets = await ref.read(presetRepositoryProvider).getPresets(token);
    return presets;
  }

  Future<bool> useSharedCode(String code) async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return false;

    final configuration = await ref.read(presetRepositoryProvider).useSharedCode(token, code);

    if (configuration == null) return false;
    ref.read(currentConfigurationProvider.notifier).setConfiguration(configuration);
    return true;
  }
}
