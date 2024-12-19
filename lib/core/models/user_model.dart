import 'package:json_annotation/json_annotation.dart';
import 'package:sistem_kompen_app/core/models/login_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserResponse {
  final bool success;
  final User data;

  UserResponse({
    required this.success,
    required this.data,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
