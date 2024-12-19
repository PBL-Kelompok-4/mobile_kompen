// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) =>
    DashboardResponse(
      success: json['success'] as bool,
      data: DashboardData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DashboardResponseToJson(DashboardResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) =>
    DashboardData(
      idMahasiswa: (json['id_mahasiswa'] as num).toInt(),
      nomorInduk: json['nomor_induk'] as String,
      nama: json['nama'] as String,
      jamAlpha: (json['jam_alpha'] as num).toInt(),
      jamKompen: (json['jam_kompen'] as num).toInt(),
      jamKompenSelesai: (json['jam_kompen_selesai'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardDataToJson(DashboardData instance) =>
    <String, dynamic>{
      'id_mahasiswa': instance.idMahasiswa,
      'nomor_induk': instance.nomorInduk,
      'nama': instance.nama,
      'jam_alpha': instance.jamAlpha,
      'jam_kompen': instance.jamKompen,
      'jam_kompen_selesai': instance.jamKompenSelesai,
    };
