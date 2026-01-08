import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@Collection()
@JsonSerializable()
class User {
  Id id = Isar.autoIncrement; // Isar internal id
  final String userId; // API user ID
  final String email;
  final String password;
  final String? message;

  User(
      {required this.userId,
      required this.email,
      required this.password,
      required this.message});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId']?.toString() ?? '',
      email: json['email']?.toString() ?? '',
      password: json['password']?.toString() ?? '',
      message: json['message']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
