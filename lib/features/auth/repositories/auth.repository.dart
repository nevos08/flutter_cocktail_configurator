import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/user.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/constants.dart';

part 'auth.repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository();
}

class AuthRepository {
  final _storage = const FlutterSecureStorage();

  Future<User?> signIn(String username, String password) async {
    Uri url = Uri.https(Constants.BASE_API_URL, "/api/auth/login");
    final response = await http.post(
      url,
      body: json.encode(
        {
          "username": username,
          "password": password,
        },
      ),
      headers: {
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode != 200) return null;

    final data = json.decode(response.body);
    final token = data["token"];

    if (token == null) return null;

    final jwt = JWT.decode(token);
    final user = jwt.payload["user"];

    await _storage.write(key: "token", value: token);

    return User(
      id: user["id"],
      username: user["username"],
      email: user["email"],
      firstName: user["firstName"],
      lastName: user["lastName"],
    );
  }

  Future<bool> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    Uri url = Uri.https(Constants.BASE_API_URL, "/api/auth/register");

    final response = await http.post(
      url,
      body: json.encode(
        {
          "username": username,
          "password": password,
          "email": email,
          "firstName": firstName,
          "lastName": lastName
        },
      ),
      headers: {
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode != 200) return false;
    return true;
  }

  Future<void> signOut() async {
    await _storage.delete(key: "token");
  }
}
