import 'package:mib33_webframeworks_prototyp_2/features/auth/repositories/auth.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register.viewmodel.g.dart';

@riverpod
class RegisterViewModel extends _$RegisterViewModel {
  @override
  void build() {
    return;
  }

  Future<bool> register(
      String firstName, String lastName, String email, String username, String password) async {
    return await ref.read(authRepositoryProvider).signUp(
        username: username,
        password: password,
        email: email,
        firstName: firstName,
        lastName: lastName);
  }
}
