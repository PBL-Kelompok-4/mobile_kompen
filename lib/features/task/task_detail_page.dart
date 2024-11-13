import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/core/images.dart';
import 'package:sistem_kompen_app/core/shared/custom_button.dart';

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({super.key});

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
                'Notifikasi Penugasan Perpustakaan',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Penugasan terbaru pada tanggal 04/11/2024 Pukul 18.00 WIB',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'Penugasan dapat dilakukan oleh mahasiswa dengan meminta request penugasan pada tombol dibawah. penugasan ini dilakukan berdasarkan dengan kebutuhan perpustakaan agar mahasiswa dapat melakukan penyusunan buku pada rak sesuai dengan kategori yang ada.',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                '1. Mahasiswa melakukan penyusunan buku sesuai dengan kategori pada tulisan yang tersedia di rak buku. ',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              Text(
                '2. Mahasiswa melakukan dokumentasi pada buku yang diletakkan sesuai kategori (video percepat waktu dan 1 foto',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              Text(
                '3. Melakukan request pada tombol dibawah untuk mengumpulkan penugasan',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              Text(
                '4. Mengirimkan penugasan pada tempat yang tersedia.',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              Text(
                '5. Selesai.',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              Text(
                'Ade Ismail S.Kom.,M.kom.',
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Poin Penugasan 10 Jam.',
                style: AppFonts.interBold(
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              Text(
                '5 Hari.',
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
                child: CustomButton(
                  width: 164,
                  onPressed: () {},
                  text: 'REQUEST',
                  bgColor: AppColors.orange,
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
