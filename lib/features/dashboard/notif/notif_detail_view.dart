import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';

class NotifDetailView extends StatelessWidget {
  const NotifDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.5,
        title: Text(
          'DETAIL NOTIFIKASI',
          style: AppFonts.readexProSemiBold(
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.icBookNotif,
                  ),
                  Expanded(
                    child: Text(
                      'NOTIFIKASI TENGGAT PENUGASAN',
                      style: AppFonts.readexProSemiBold(
                        fontSize: 20,
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
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
                'Perpustakaan',
                style: AppFonts.interBold(
                  color: AppColors.black,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                'To : Hilmy Zaky Mustakim',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                'Batas pengiriman penugasan melakukan input data perpustakaan pada tanggal 5/11/2024, pukul 10.15 WIB.',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                'Pemberian tenggat perpustakaan diberikan untuk memberikan efek jera bagi penerima penugasan untuk tidak dilakukan kesalahan berikutnya. Bagi penerima penugasan diharapkan dapat melakukan penugasan dengan sebaiknya dan tepat sesuai waktu yang diberikan.',
                style: AppFonts.interMedium(
                  fontSize: 12,
                  color: AppColors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
