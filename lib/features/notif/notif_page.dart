import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/features/notif/notif_detail_page.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.5,
        title: Text(
          'NOTIFIKASI',
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
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          color: AppColors.orange,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotifDetailPage(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tenggat Penugasan',
                          style: AppFonts.readexProSemiBold(
                            fontSize: 16,
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          'Notifikasi Penugasan Perpustakaan',
                          style: AppFonts.interMedium(
                            fontSize: 14,
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          'Batas pengiriman penugasan melakukan input data perpustakaan pada tanggal 5/11/2024, pukul 10.15 WIB. ',
                          style: AppFonts.interMedium(
                            fontSize: 12,
                            color: AppColors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
