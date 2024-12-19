String getProdi(int idProdi) {
  switch (idProdi) {
    case 1:
      return 'Teknik Informatika';
    case 2:
      return 'Sistem Informasi Bisnis';
    case 3:
      return 'Pengembangan Piranti Lunak Situs';
    default:
      return 'Unknown';
  }
}

String getPeriode(int idPeriode) {
  switch (idPeriode) {
    case 1:
      return '2018';
    case 2:
      return '2019';
    case 3:
      return '2020';
    case 4:
      return '2021';
    case 5:
      return '2022';
    case 6:
      return '2023';
    case 7:
      return '2024';
    case 8:
      return '2025';
    default:
      return 'Unknown';
  }
}

String formatTanggal(String tanggalMulai) {
  // Pisahkan tanggal dan jam
  List<String> parts = tanggalMulai.split(" ");
  String tanggal = parts[0]; // Bagian tanggal: "2024-12-01"

  // Mengubah tanggal menjadi format yang lebih mudah dibaca
  List<String> dateParts = tanggal.split("-");
  return "${dateParts[2]}/${dateParts[1]}/${dateParts[0]}"; // Format: 01/12/2024
}

String formatJam(String tanggalMulai) {
  // Pisahkan tanggal dan jam
  List<String> parts = tanggalMulai.split(" ");
  String jam = parts[1]; // Bagian jam: "16:30:00"

  // Mengubah jam menjadi format yang lebih mudah dibaca
  List<String> timeParts = jam.split(":");
  return "${timeParts[0]}:${timeParts[1]}"; // Format: 16:30
}

int calculateDayRange(String tanggalMulai, String tanggalSelesai) {
  // Parse tanggal_mulai dan tanggal_selesai ke objek DateTime
  DateTime startDate = DateTime.parse(tanggalMulai);
  DateTime endDate = DateTime.parse(tanggalSelesai);

  // Hitung selisih hari antara tanggal_mulai dan tanggal_selesai
  Duration difference = endDate.difference(startDate);

  // Kembalikan jumlah hari
  return difference.inDays;
}
