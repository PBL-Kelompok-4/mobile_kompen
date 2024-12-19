import 'package:json_annotation/json_annotation.dart';

part 'list_kompen_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ListKompenResponse {
  final bool success;
  final List<KompenData> data;

  ListKompenResponse({
    required this.success,
    required this.data,
  });

  factory ListKompenResponse.fromJson(Map<String, dynamic> json) => _$ListKompenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListKompenResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class KompenData {
  final int idKompen;
  final String nama;
  final String deskripsi;
  final int idPersonil;
  final int idJenisKompen;
  final int kuota;
  final int jamKompen;
  final String status;
  final String isSelesai;
  final String tanggalMulai;
  final String tanggalSelesai;
  final PersonilAkademik personilAkademik;
  final JenisKompen jenisKompen;

  KompenData({
    required this.idKompen,
    required this.nama,
    required this.deskripsi,
    required this.idPersonil,
    required this.idJenisKompen,
    required this.kuota,
    required this.jamKompen,
    required this.status,
    required this.isSelesai,
    required this.tanggalMulai,
    required this.tanggalSelesai,
    required this.personilAkademik,
    required this.jenisKompen,
  });

  factory KompenData.fromJson(Map<String, dynamic> json) => _$KompenDataFromJson(json);

  Map<String, dynamic> toJson() => _$KompenDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PersonilAkademik {
  final int idPersonil;
  final String nomorInduk;
  final String username;
  final String nama;
  final String nomorTelp;
  final int idLevel;

  PersonilAkademik({
    required this.idPersonil,
    required this.nomorInduk,
    required this.username,
    required this.nama,
    required this.nomorTelp,
    required this.idLevel,
  });

  factory PersonilAkademik.fromJson(Map<String, dynamic> json) => _$PersonilAkademikFromJson(json);

  Map<String, dynamic> toJson() => _$PersonilAkademikToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class JenisKompen {
  final int idJenisKompen;
  final String kodeJenis;
  final String namaJenis;

  JenisKompen({
    required this.idJenisKompen,
    required this.kodeJenis,
    required this.namaJenis,
  });

  factory JenisKompen.fromJson(Map<String, dynamic> json) => _$JenisKompenFromJson(json);

  Map<String, dynamic> toJson() => _$JenisKompenToJson(this);
}
