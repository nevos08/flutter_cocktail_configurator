import 'package:mib33_webframeworks_prototyp_2/features/configurator/data/steps.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/configurator_step.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/models/generate_name_and_desc_result.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'configurator.viewmodel.g.dart';

class ConfiguratorViewModelState {
  ConfiguratorViewModelState({
    int currentPage = 0,
  }) : _currentPage = currentPage;

  final int _currentPage;

  int get currentPage => _currentPage;

  ConfiguratorStep get currentStep => steps.elementAt(currentPage);

  ConfiguratorViewModelState copyWith({
    int? currentPage,
  }) {
    return ConfiguratorViewModelState(currentPage: currentPage ?? this.currentPage);
  }
}

@riverpod
class ConfiguratorViewModel extends _$ConfiguratorViewModel {
  @override
  ConfiguratorViewModelState build() {
    return ConfiguratorViewModelState();
  }

  void setCurrentPage(int page) {
    if (page < 0) {
      page = 0;
    }

    if (page > steps.length - 1) {
      page = steps.length - 1;
    }

    state = state.copyWith(currentPage: page);
  }

  void nextPage() {
    if (state.currentPage >= steps.length - 1) return;
    setCurrentPage(state.currentPage + 1);
  }

  Future<GenerateNameAndDescResult?> generateNameAndDescription() async {
    return await ref.read(currentConfigurationProvider.notifier).generateNameAndDescription();
  }
}
