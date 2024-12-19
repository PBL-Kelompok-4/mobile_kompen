// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      success: json['success'] as bool,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'user': instance.user,
      'token': instance.token,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      idMahasiswa: (json['id_mahasiswa'] as num).toInt(),
      nomorInduk: json['nomor_induk'] as String,
      username: json['username'] as String,
      nama: json['nama'] as String,
      idPeriode: (json['id_periode'] as num).toInt(),
      idProdi: (json['id_prodi'] as num).toInt(),
      jamAlpha: (json['jam_alpha'] as num).toInt(),
      jamKompen: (json['jam_kompen'] as num).toInt(),
      jamKompenSelesai: (json['jam_kompen_selesai'] as num).toInt(),
      idLevel: (json['id_level'] as num).toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id_mahasiswa': instance.idMahasiswa,
      'nomor_induk': instance.nomorInduk,
      'username': instance.username,
      'nama': instance.nama,
      'id_periode': instance.idPeriode,
      'id_prodi': instance.idProdi,
      'jam_alpha': instance.jamAlpha,
      'jam_kompen': instance.jamKompen,
      'jam_kompen_selesai': instance.jamKompenSelesai,
      'id_level': instance.idLevel,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
