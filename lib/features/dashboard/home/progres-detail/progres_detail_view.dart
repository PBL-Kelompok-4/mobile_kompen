import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/models/progres_kompen_model.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';
import 'package:sistem_kompen_app/ui/shared/utils.dart';

class ProgresDetailView extends StatelessWidget {
  final ProgresKompenData progresKompenData;
  const ProgresDetailView({
    super.key,
    required this.progresKompenData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.5,
        title: Text(
          'DETAIL TUGAS',
          style: AppFonts.readexProSemiBold(
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.icArsip,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'ARSIP NILAI',
                    style: AppFonts.interBold(
                      fontSize: 24,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                margin: const EdgeInsets.symmetric(vertical: 8),
                color: AppColors.orange,
              ),
              Text(
                'Notifikasi Penugasan ${progresKompenData.kompen.nama}',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Penugasan pada tanggal ${formatTanggal(progresKompenData.kompen.tanggalMulai)} Pukul ${formatJam(progresKompenData.kompen.tanggalMulai)} WIB',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                progresKompenData.kompen.deskripsi,
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              Text(
                progresKompenData.mahasiswa.nama,
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Poin Penugasan ${progresKompenData.kompen.jamKompen} Jam.',
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              Text(
                '${calculateDayRange(progresKompenData.kompen.tanggalMulai, progresKompenData.kompen.tanggalSelesai)} Hari.',
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(
                height: 72.0,
              ),
              Container(
                height: 1,
                margin: const EdgeInsets.symmetric(vertical: 8),
                color: AppColors.orange,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'PROGRESS PENUGASAN',
                      style: AppFonts.interBold(
                        fontSize: 16,
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.orange,
                      ),
                      child: Text(
                        '100%',
                        style: AppFonts.readexProBold(
                          fontSize: 16,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              Text(
                'KERJAKAN PENUGASAN SESUAI PETUNJUK YANG TERSEDIA !',
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
