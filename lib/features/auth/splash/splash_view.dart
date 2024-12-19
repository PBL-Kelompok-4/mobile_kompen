import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/features/auth/splash/splash_view_model.dart';
import 'package:sistem_kompen_app/features/base_view.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (SplashViewModel model) => model.navigateSplash(context),
      onModelDispose: (SplashViewModel model) => model.disposeModel(),
      builder: (BuildContext context, SplashViewModel model, _) {
        return const Scaffold(
          backgroundColor: AppColors.white,
          body: SplashContent(),
        );
      },
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
