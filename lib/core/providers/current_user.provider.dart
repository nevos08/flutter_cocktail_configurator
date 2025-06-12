import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/user.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';

part 'current_user.provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  final _storage = const FlutterSecureStorage();

  @override
  Future<User?> build() async {
    final user = await verifyUserToken();
    if (user != null) return user;

    return null;
  }

  void setUser(User? user) {
    state = AsyncValue.data(user);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: "token");
  }

  Future<User?> verifyUserToken() async {
    final token = await _storage.read(key: "token");
    if (token == null) return null;

    Uri url = Uri.https(Constants.BASE_API_URL, "/api/auth/verify");
    final response = await http.post(url, headers: {"Authorization": "Bearer $token"});

    if (response.statusCode != 200) return null;

    final userData = JWT.decode(token).payload["user"];

    return User(
      id: userData["id"],
      username: userData["username"],
      email: userData["email"],
      firstName: userData["firstName"],
      lastName: userData["lastName"],
    );
  }
}
