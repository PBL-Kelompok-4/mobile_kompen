// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_kompen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListKompenResponse _$ListKompenResponseFromJson(Map<String, dynamic> json) =>
    ListKompenResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => KompenData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListKompenResponseToJson(ListKompenResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

KompenData _$KompenDataFromJson(Map<String, dynamic> json) => KompenData(
      idKompen: (json['id_kompen'] as num).toInt(),
      nama: json['nama'] as String,
      deskripsi: json['deskripsi'] as String,
      idPersonil: (json['id_personil'] as num).toInt(),
      idJenisKompen: (json['id_jenis_kompen'] as num).toInt(),
      kuota: (json['kuota'] as num).toInt(),
      jamKompen: (json['jam_kompen'] as num).toInt(),
      status: json['status'] as String,
      isSelesai: json['is_selesai'] as String,
      tanggalMulai: json['tanggal_mulai'] as String,
      tanggalSelesai: json['tanggal_selesai'] as String,
      personilAkademik: PersonilAkademik.fromJson(
          json['personil_akademik'] as Map<String, dynamic>),
      jenisKompen:
          JenisKompen.fromJson(json['jenis_kompen'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KompenDataToJson(KompenData instance) =>
    <String, dynamic>{
      'id_kompen': instance.idKompen,
      'nama': instance.nama,
      'deskripsi': instance.deskripsi,
      'id_personil': instance.idPersonil,
      'id_jenis_kompen': instance.idJenisKompen,
      'kuota': instance.kuota,
      'jam_kompen': instance.jamKompen,
      'status': instance.status,
      'is_selesai': instance.isSelesai,
      'tanggal_mulai': instance.tanggalMulai,
      'tanggal_selesai': instance.tanggalSelesai,
      'personil_akademik': instance.personilAkademik,
      'jenis_kompen': instance.jenisKompen,
    };

PersonilAkademik _$PersonilAkademikFromJson(Map<String, dynamic> json) =>
    PersonilAkademik(
      idPersonil: (json['id_personil'] as num).toInt(),
      nomorInduk: json['nomor_induk'] as String,
      username: json['username'] as String,
      nama: json['nama'] as String,
      nomorTelp: json['nomor_telp'] as String,
      idLevel: (json['id_level'] as num).toInt(),
    );

Map<String, dynamic> _$PersonilAkademikToJson(PersonilAkademik instance) =>
    <String, dynamic>{
      'id_personil': instance.idPersonil,
      'nomor_induk': instance.nomorInduk,
      'username': instance.username,
      'nama': instance.nama,
      'nomor_telp': instance.nomorTelp,
      'id_level': instance.idLevel,
    };

JenisKompen _$JenisKompenFromJson(Map<String, dynamic> json) => JenisKompen(
      idJenisKompen: (json['id_jenis_kompen'] as num).toInt(),
      kodeJenis: json['kode_jenis'] as String,
      namaJenis: json['nama_jenis'] as String,
    );

Map<String, dynamic> _$JenisKompenToJson(JenisKompen instance) =>
    <String, dynamic>{
      'id_jenis_kompen': instance.idJenisKompen,
      'kode_jenis': instance.kodeJenis,
      'nama_jenis': instance.namaJenis,
    };
