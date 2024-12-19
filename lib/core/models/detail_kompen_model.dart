import 'package:json_annotation/json_annotation.dart';

part 'detail_kompen_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DetailKompenResponse {
  final bool success;
  final DetailKompenData data;

  DetailKompenResponse({
    required this.success,
    required this.data,
  });

  factory DetailKompenResponse.fromJson(Map<String, dynamic> json) => _$DetailKompenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DetailKompenResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DetailKompenData {
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

  DetailKompenData({
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

  factory DetailKompenData.fromJson(Map<String, dynamic> json) => _$DetailKompenDataFromJson(json);

  Map<String, dynamic> toJson() => _$DetailKompenDataToJson(this);
}
