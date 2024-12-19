import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistem_kompen_app/features/base_view.dart';
import 'package:sistem_kompen_app/features/dashboard/profile/profile_view_model.dart';
import 'package:sistem_kompen_app/ui/components/custom_appbar.dart';
import 'package:sistem_kompen_app/ui/components/custom_bg.dart';
import 'package:sistem_kompen_app/ui/components/custom_button.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/utils.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
      model: ProfileViewModel(
        baseApi: Provider.of(context),
      ),
      onModelReady: (ProfileViewModel model) => model.initModel(),
      onModelDispose: (ProfileViewModel model) => model.disposeModel(),
      builder: (BuildContext context, ProfileViewModel model, _) {
        return Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0.5,
            automaticallyImplyLeading: false,
            title: const CustomAppbar(
              label: 'PROFILE',
            ),
          ),
          body: const ProfileContent(),
        );
      },
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileViewModel model = Provider.of<ProfileViewModel>(context);
    return Stack(
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
                    child: Icon(
                      Icons.person,
                      color: AppColors.white,
                      size: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ProfileTile(
                  label: 'NAMA',
                  title: model.user != null ? model.user!.nama.toUpperCase() : '-',
                ),
                ProfileTile(
                  label: 'NIM',
                  title: model.user != null ? model.user!.nomorInduk : '-',
                ),
                ProfileTile(
                  label: 'PRODI',
                  title: model.user != null ? getProdi(model.user!.idProdi).toUpperCase() : '-',
                ),
                ProfileTile(
                  label: 'TAHUN MASUK',
                  title: model.user != null ? 'TAHUN-${getPeriode(model.user!.idPeriode)}' : '-',
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
                                          onPressed: () async {
                                            await model.logout(context);
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
