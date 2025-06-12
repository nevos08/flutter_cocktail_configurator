import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.g.dart';

part 'user.model.freezed.dart';

@freezed
class User with _$User {
  const User._();

  factory User({
    required String id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
  }) = _User;

  String get fullName => "$firstName $lastName";

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
