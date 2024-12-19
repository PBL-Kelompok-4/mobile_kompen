import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LoginRequest {
  const LoginRequest({
    required this.username,
    required this.password,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  final String username;
  final String password;

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LoginResponse {
  const LoginResponse({
    required this.success,
    this.user,
    this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  final bool success;
  final User? user;
  final String? token;

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
  const User({
    required this.idMahasiswa,
    required this.nomorInduk,
    required this.username,
    required this.nama,
    required this.idPeriode,
    required this.idProdi,
    required this.jamAlpha,
    required this.jamKompen,
    required this.jamKompenSelesai,
    required this.idLevel,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final int idMahasiswa;
  final String nomorInduk;
  final String username;
  final String nama;
  final int idPeriode;
  final int idProdi;
  final int jamAlpha;
  final int jamKompen;
  final int jamKompenSelesai;
  final int idLevel;
  final String? createdAt;
  final String? updatedAt;

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
