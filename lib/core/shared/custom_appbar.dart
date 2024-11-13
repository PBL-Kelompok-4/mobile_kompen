import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/core/images.dart';
import 'package:sistem_kompen_app/features/notif/notif_page.dart';

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotifPage(),
              ),
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
