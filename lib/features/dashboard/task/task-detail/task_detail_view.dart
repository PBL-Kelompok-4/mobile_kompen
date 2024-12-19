import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/models/list_kompen_model.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';
import 'package:sistem_kompen_app/ui/shared/utils.dart';

class TaskDetailView extends StatelessWidget {
  final KompenData kompenData;
  const TaskDetailView({
    super.key,
    required this.kompenData,
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
                'Notifikasi Penugasan ${kompenData.nama}',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Penugasan pada tanggal ${formatTanggal(kompenData.tanggalMulai)} Pukul ${formatJam(kompenData.tanggalMulai)} WIB',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                kompenData.deskripsi,
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              Text(
                kompenData.personilAkademik.nama,
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Poin Penugasan ${kompenData.jamKompen} Jam.',
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              Text(
                '${calculateDayRange(kompenData.tanggalMulai, kompenData.tanggalSelesai)} Hari.',
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
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.orange,
                    border: Border.all(
                      color: AppColors.black,
                    ),
                  ),
                  child: Text(
                    'REQUEST',
                    style: AppFonts.readexProBold(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
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
