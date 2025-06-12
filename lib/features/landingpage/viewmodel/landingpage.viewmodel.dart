import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/repositories/auth.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'landingpage.viewmodel.g.dart';

@riverpod
class LandingpageViewModel extends _$LandingpageViewModel {
  @override
  void build() {
    return;
  }

  signOut() async {
    await ref.read(authRepositoryProvider).signOut();
    ref.read(currentUserProvider.notifier).setUser(null);
  }
}
