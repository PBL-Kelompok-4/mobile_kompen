// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_kompen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailKompenResponse _$DetailKompenResponseFromJson(
        Map<String, dynamic> json) =>
    DetailKompenResponse(
      success: json['success'] as bool,
      data: DetailKompenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailKompenResponseToJson(
        DetailKompenResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

DetailKompenData _$DetailKompenDataFromJson(Map<String, dynamic> json) =>
    DetailKompenData(
      idKompen: (json['id_kompen'] as num).toInt(),
      nomorKompen: json['nomor_kompen'] as String,
      nama: json['nama'] as String,
      deskripsi: json['deskripsi'] as String,
      idPersonil: (json['id_personil'] as num).toInt(),
      idJenisKompen: (json['id_jenis_kompen'] as num).toInt(),
      kuota: (json['kuota'] as num).toInt(),
      jamKompen: (json['jam_kompen'] as num).toInt(),
      status: json['status'] as String,
      isSelesai: json['is_selesai'] as String,
      alasan: json['alasan'] as String,
      statusAcceptance: json['status_acceptance'] as String,
      tanggalMulai: json['tanggal_mulai'] as String,
      tanggalSelesai: json['tanggal_selesai'] as String,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DetailKompenDataToJson(DetailKompenData instance) =>
    <String, dynamic>{
      'id_kompen': instance.idKompen,
      'nomor_kompen': instance.nomorKompen,
      'nama': instance.nama,
      'deskripsi': instance.deskripsi,
      'id_personil': instance.idPersonil,
      'id_jenis_kompen': instance.idJenisKompen,
      'kuota': instance.kuota,
      'jam_kompen': instance.jamKompen,
      'status': instance.status,
      'is_selesai': instance.isSelesai,
      'alasan': instance.alasan,
      'status_acceptance': instance.statusAcceptance,
      'tanggal_mulai': instance.tanggalMulai,
      'tanggal_selesai': instance.tanggalSelesai,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
