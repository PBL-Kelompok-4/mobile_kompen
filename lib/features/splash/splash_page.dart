import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/core/images.dart';
import 'package:sistem_kompen_app/features/login/login_mahasiswa_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _loadingSplash();
  }

  Future<void> _loadingSplash() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginMahasiswaPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text: 'Sistem ',
                style: AppFonts.interLight(
                  fontSize: 34,
                  color: AppColors.navy,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Kompen',
                    style: AppFonts.interBold(
                      fontSize: 34,
                      color: AppColors.navy,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
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
    );
  }
}
