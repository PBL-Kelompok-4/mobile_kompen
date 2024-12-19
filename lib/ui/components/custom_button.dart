import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color bgColor;
  final double height;
  final double width;
  final double radius;
  final bool disabled;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.bgColor,
    this.height = 48,
    this.width = double.infinity,
    this.radius = 40,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          side: BorderSide(
            color: AppColors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        onPressed: disabled ? null : onPressed,
        child: Text(
          text,
          style: AppFonts.readexProSemiBold(
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
