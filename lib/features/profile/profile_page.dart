import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/core/shared/custom_appbar.dart';
import 'package:sistem_kompen_app/core/shared/custom_bg.dart';
import 'package:sistem_kompen_app/core/shared/custom_button.dart';
import 'package:sistem_kompen_app/features/login/login_mahasiswa_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.5,
        title: const CustomAppbar(
          label: 'PROFILE',
        ),
      ),
      body: Stack(
        children: [
          const CustomBg(
            top: 500,
            right: 80,
            left: 80,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const ProfileTile(
                    label: 'NAMA',
                    title: 'HILMY ZAKY MUSTAKIM',
                  ),
                  const ProfileTile(
                    label: 'NIM',
                    title: '2241760089',
                  ),
                  const ProfileTile(
                    label: 'PRODI',
                    title: 'D-IV SISTEM INFORMASI BISNIS',
                  ),
                  const ProfileTile(
                    label: 'JURUSAN',
                    title: 'TEKNOLOGI INFORMASI',
                  ),
                  const ProfileTile(
                    label: 'Nomor Telepon',
                    title: '081952719313',
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: CustomButton(
                      width: 164,
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 24,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Logout dari akun?',
                                      style: AppFonts.readexProSemiBold(
                                        fontSize: 18,
                                        color: AppColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomButton(
                                            radius: 8,
                                            height: 40,
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            text: 'Batal',
                                            bgColor: AppColors.red,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40.0,
                                        ),
                                        Expanded(
                                          child: CustomButton(
                                            radius: 8,
                                            height: 40,
                                            onPressed: () {
                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => const LoginMahasiswaPage(),
                                                ),
                                                (route) => false,
                                              );
                                            },
                                            text: 'Logout',
                                            bgColor: AppColors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      text: 'LOGOUT',
                      bgColor: AppColors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String label;
  final String title;
  const ProfileTile({
    super.key,
    required this.label,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppFonts.readexProBold(
              fontSize: 16,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.secondary,
            ),
            child: Text(
              title,
              style: AppFonts.readexProBold(
                color: AppColors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
