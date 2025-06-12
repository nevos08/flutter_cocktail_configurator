import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/repositories/size.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'size.viewmodel.g.dart';

@Riverpod(keepAlive: true)
class SizeViewModel extends _$SizeViewModel {
  @override
  Future<List<Size>> build() async {
    final token = await ref.read(currentUserProvider.notifier).getToken();
    if (token == null) return [];

    final sizes = await ref.read(sizeRepositoryProvider).getSizes(token);

    if (ref.read(currentConfigurationProvider).value!.size.id == 0) {
      ref.read(currentConfigurationProvider.notifier).setSize(sizes.first);
    }

    return sizes;
  }
}
