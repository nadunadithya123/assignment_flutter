import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@Collection()
@JsonSerializable()
class User {
  @JsonKey(includeFromJson: false, includeToJson: false)
  Id id = Isar.autoIncrement;
  final String? userId;
  final String? email;
  final String? password;
  final String? message;

  User(
      { this.userId,
       this.email,
       this.password,
       this.message});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
