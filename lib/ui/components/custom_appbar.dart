import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/ui/routes/app_routes.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';

class CustomAppbar extends StatelessWidget {
  final String label;
  const CustomAppbar({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppImages.imgJti,
          height: 34,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Text(
          label,
          style: AppFonts.readexProSemiBold(
            fontSize: 18,
            color: AppColors.black,
          ),
        ),
        const Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.notif,
            );
          },
          child: SvgPicture.asset(
            AppImages.icNotif,
          ),
        ),
      ],
    );
  }
}
