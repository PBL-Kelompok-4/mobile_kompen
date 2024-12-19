import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';

class CustomDialogLoading extends StatelessWidget {
  const CustomDialogLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: SizedBox(
              height: 32,
              width: 32,
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
