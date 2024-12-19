import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sistem_kompen_app/features/auth/login/login_view_model.dart';
import 'package:sistem_kompen_app/features/base_view.dart';
import 'package:sistem_kompen_app/ui/components/custom_bg.dart';
import 'package:sistem_kompen_app/ui/components/custom_button.dart';
import 'package:sistem_kompen_app/ui/components/custom_dialog_loading.dart';
import 'package:sistem_kompen_app/ui/components/custom_textfield.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      model: LoginViewModel(
        baseApi: Provider.of(context),
      ),
      onModelReady: (LoginViewModel model) => model.initModel(),
      onModelDispose: (LoginViewModel model) => model.disposeModel(),
      builder: (BuildContext context, LoginViewModel model, _) {
        return Stack(
          children: [
            const Scaffold(
              backgroundColor: AppColors.white,
              body: LoginContent(),
            ),
            if (model.isBusy) const CustomDialogLoading(),
          ],
        );
      },
    );
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginViewModel model = Provider.of<LoginViewModel>(context);
    return Stack(
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
                'Mahasiswa',
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
                    CustomTextField(
                      controller: model.usernameController,
                      hintText: 'Username',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: AppColors.grey,
                      ),
                      onChanged: (value) {
                        model.updateUsername(value);
                      },
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    CustomTextField(
                      controller: model.passwordController,
                      hintText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: AppColors.grey,
                      ),
                      onChanged: (value) {
                        model.updatePassword(value);
                      },
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    CustomButton(
                      bgColor: AppColors.primary,
                      width: 164,
                      onPressed: model.isFormValid
                          ? () async {
                              await model.login(context);
                            }
                          : null,
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
    );
  }
}
