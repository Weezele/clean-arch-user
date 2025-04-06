import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
  });

  /// For converting JSON response to model
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// For sending model as JSON
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  /// Convert to domain entity
  User toEntity() {
    return User(
      id: id,
      name: name,
      username: username,
      email: email,
      phone: phone,
    );
  }

  /// Create from domain entity (used when posting new user)
  factory UserModel.fromEntity(User user) {
    return UserModel(
      id: user.id,
      name: user.name,
      username: user.username,
      email: user.email,
      phone: user.phone,
    );
  }
}
