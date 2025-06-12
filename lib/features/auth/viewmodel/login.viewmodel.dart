import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/repositories/auth.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login.viewmodel.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  void build() {
    return;
  }

  Future<bool> signIn(String username, String password) async {
    final user =
        await ref.read(authRepositoryProvider).signIn(username, password);
    ref.read(currentUserProvider.notifier).setUser(user);
    return user != null;
  }
}
