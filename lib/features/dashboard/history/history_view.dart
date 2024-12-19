import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';
import 'package:sistem_kompen_app/ui/components/custom_appbar.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        title: const CustomAppbar(
          label: 'RIWAYAT',
        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 8,
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 120,
          left: 20,
          right: 20,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.yellow,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.red,
                      ),
                      child: Text(
                        'Menunggu Persetujuan',
                        style: AppFonts.interSemiBold(
                          fontSize: 10,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.orange,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppImages.icBook,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tugas Perpustakaan',
                              style: AppFonts.interSemiBold(
                                fontSize: 10,
                                color: AppColors.black,
                              ),
                            ),
                            Text(
                              'Membersihkan Perpustakaan dan Menata Buku Sesuai Dengan Kategori Buku.',
                              style: AppFonts.interRegular(
                                fontSize: 10,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
