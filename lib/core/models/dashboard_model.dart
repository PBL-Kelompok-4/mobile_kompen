import 'package:json_annotation/json_annotation.dart';

part 'dashboard_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DashboardResponse {
  final bool success;
  final DashboardData data;

  DashboardResponse({
    required this.success,
    required this.data,
  });

  factory DashboardResponse.fromJson(Map<String, dynamic> json) => _$DashboardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DashboardData {
  final int idMahasiswa;
  final String nomorInduk;
  final String nama;
  final int jamAlpha;
  final int jamKompen;
  final int jamKompenSelesai;

  DashboardData({
    required this.idMahasiswa,
    required this.nomorInduk,
    required this.nama,
    required this.jamAlpha,
    required this.jamKompen,
    required this.jamKompenSelesai,
  });

  factory DashboardData.fromJson(Map<String, dynamic> json) => _$DashboardDataFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardDataToJson(this);
}
