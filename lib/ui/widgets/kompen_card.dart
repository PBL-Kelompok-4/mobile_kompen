import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/models/list_kompen_model.dart';
import 'package:sistem_kompen_app/ui/routes/app_routes.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';

class KompenCard extends StatelessWidget {
  final KompenData data;
  const KompenCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.taskKompenDetail,
          arguments: data,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.secondary,
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 4),
              blurRadius: 4,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.25),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primary,
              ),
              child: SvgPicture.asset(
                AppImages.icDownload,
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ARSIP NILAI',
                  style: AppFonts.readexProBold(
                    fontSize: 20,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.green,
                  ),
                  child: Text(
                    data.personilAkademik.nama.toUpperCase(),
                    style: AppFonts.readexProBold(
                      fontSize: 12,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
