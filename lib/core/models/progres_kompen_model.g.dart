// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progres_kompen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgresKompenResponse _$ProgresKompenResponseFromJson(
        Map<String, dynamic> json) =>
    ProgresKompenResponse(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : ProgresKompenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProgresKompenResponseToJson(
        ProgresKompenResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

ProgresKompenData _$ProgresKompenDataFromJson(Map<String, dynamic> json) =>
    ProgresKompenData(
      idKompenDetail: (json['id_kompen_detail'] as num).toInt(),
      idKompen: (json['id_kompen'] as num).toInt(),
      idMahasiswa: (json['id_mahasiswa'] as num).toInt(),
      progres1: json['progres1'] as String?,
      progres2: json['progres2'] as String?,
      status: json['status'] as String,
      persenProgres: (json['persen_progres'] as num).toInt(),
      kompen: KompenData.fromJson(json['kompen'] as Map<String, dynamic>),
      mahasiswa:
          MahasiswaData.fromJson(json['mahasiswa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProgresKompenDataToJson(ProgresKompenData instance) =>
    <String, dynamic>{
      'id_kompen_detail': instance.idKompenDetail,
      'id_kompen': instance.idKompen,
      'id_mahasiswa': instance.idMahasiswa,
      'progres1': instance.progres1,
      'progres2': instance.progres2,
      'status': instance.status,
      'persen_progres': instance.persenProgres,
      'kompen': instance.kompen,
      'mahasiswa': instance.mahasiswa,
    };

KompenData _$KompenDataFromJson(Map<String, dynamic> json) => KompenData(
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

Map<String, dynamic> _$KompenDataToJson(KompenData instance) =>
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

MahasiswaData _$MahasiswaDataFromJson(Map<String, dynamic> json) =>
    MahasiswaData(
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

Map<String, dynamic> _$MahasiswaDataToJson(MahasiswaData instance) =>
    <String, dynamic>{
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
