import 'package:json_annotation/json_annotation.dart';

part 'progres_kompen_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProgresKompenResponse {
  final bool success;
  final ProgresKompenData? data;

  ProgresKompenResponse({
    required this.success,
    this.data,
  });

  factory ProgresKompenResponse.fromJson(Map<String, dynamic> json) => _$ProgresKompenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProgresKompenResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProgresKompenData {
  final int idKompenDetail;
  final int idKompen;
  final int idMahasiswa;
  final String? progres1;
  final String? progres2;
  final String status;
  final int persenProgres;
  final KompenData kompen;
  final MahasiswaData mahasiswa;

  ProgresKompenData({
    required this.idKompenDetail,
    required this.idKompen,
    required this.idMahasiswa,
    this.progres1,
    this.progres2,
    required this.status,
    required this.persenProgres,
    required this.kompen,
    required this.mahasiswa,
  });

  factory ProgresKompenData.fromJson(Map<String, dynamic> json) => _$ProgresKompenDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProgresKompenDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class KompenData {
  final int idKompen;
  final String nomorKompen;
  final String nama;
  final String deskripsi;
  final int idPersonil;
  final int idJenisKompen;
  final int kuota;
  final int jamKompen;
  final String status;
  final String isSelesai;
  final String alasan;
  final String statusAcceptance;
  final String tanggalMulai;
  final String tanggalSelesai;
  final String? createdAt;
  final String? updatedAt;

  KompenData({
    required this.idKompen,
    required this.nomorKompen,
    required this.nama,
    required this.deskripsi,
    required this.idPersonil,
    required this.idJenisKompen,
    required this.kuota,
    required this.jamKompen,
    required this.status,
    required this.isSelesai,
    required this.alasan,
    required this.statusAcceptance,
    required this.tanggalMulai,
    required this.tanggalSelesai,
    this.createdAt,
    this.updatedAt,
  });

  factory KompenData.fromJson(Map<String, dynamic> json) => _$KompenDataFromJson(json);

  Map<String, dynamic> toJson() => _$KompenDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MahasiswaData {
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

  MahasiswaData({
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

  factory MahasiswaData.fromJson(Map<String, dynamic> json) => _$MahasiswaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MahasiswaDataToJson(this);
}
