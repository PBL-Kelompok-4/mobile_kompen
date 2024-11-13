import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color bgColor;
  final double height;
  final double width;
  final double radius;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.bgColor,
    this.height = 48,
    this.width = double.infinity,
    this.radius = 40,
    this.isLoading = false,
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
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const Center(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                ),
              )
            : Text(
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
