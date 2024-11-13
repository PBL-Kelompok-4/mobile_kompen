import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/core/images.dart';
import 'package:sistem_kompen_app/core/shared/custom_bg.dart';
import 'package:sistem_kompen_app/core/shared/custom_button.dart';
import 'package:sistem_kompen_app/features/dashboard/dashboard_page.dart';

class LoginAdminPage extends StatelessWidget {
  const LoginAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          const CustomBg(
            top: 120,
            right: 80,
            left: 80,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.only(
                    top: 140,
                    bottom: 48,
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Sistem\n',
                            style: AppFonts.interLight(
                              fontSize: 40,
                              color: AppColors.navy,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Kompen',
                                style: AppFonts.interBold(
                                  fontSize: 40,
                                  color: AppColors.navy,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Form
                Text(
                  'Admin',
                  style: AppFonts.interBold(
                    fontSize: 20,
                    color: AppColors.orange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      // Username
                      TextFormField(
                        cursorColor: AppColors.primary,
                        style: AppFonts.interMedium(
                          color: AppColors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: AppFonts.interRegular(
                            color: AppColors.grey,
                          ),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: AppColors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.grey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.black,
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.grey,
                              width: 1.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      // Password
                      TextFormField(
                        cursorColor: AppColors.primary,
                        style: AppFonts.interMedium(
                          color: AppColors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: AppFonts.interRegular(
                            color: AppColors.grey,
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: AppColors.grey,
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility,
                            color: AppColors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.grey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.black,
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: AppColors.grey,
                              width: 1.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Login sebagai? ',
                            style: AppFonts.interBold(
                              fontSize: 16,
                              color: AppColors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Mahasiswa',
                              style: AppFonts.interBold(
                                fontSize: 16,
                                color: AppColors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      CustomButton(
                        bgColor: AppColors.primary,
                        width: 164,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DashboardPage(),
                            ),
                          );
                        },
                        text: 'LOGIN',
                      ),

                      const SizedBox(
                        height: 100.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tidak bisa login? ',
                            style: AppFonts.interRegular(
                              color: AppColors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                borderRadius: BorderRadius.circular(32),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Icon(
                                                  Icons.close,
                                                  color: AppColors.black,
                                                  size: 32,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SvgPicture.asset(
                                            AppImages.icPhone,
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            'Silahkan Hubungi Admin',
                                            style: AppFonts.interSemiBold(
                                              fontSize: 16,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Bantuan',
                              style: AppFonts.interSemiBold(
                                color: AppColors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 12.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.imgPolinema,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 60,
                            width: 2,
                            color: AppColors.navy,
                          ),
                          Image.asset(
                            AppImages.imgJti,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Oleh Jurusan Teknologi Informasi - Polinema',
                        style: AppFonts.interRegular(
                          fontSize: 12,
                          color: AppColors.navy,
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
  }
}
