import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/core/shared/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.5,
        title: const CustomAppbar(
          label: 'SISTEM KOMPEN',
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.secondary,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColors.primary,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hilmy Zaky Mustakim',
                          style: AppFonts.readexProSemiBold(
                            fontSize: 16,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          '2241760062',
                          style: AppFonts.readexProSemiBold(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  height: 1,
                  color: AppColors.white,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EvaluationCard(
                      title: 'Total Alpha',
                      number: '30',
                      time: 'JAM',
                    ),
                    EvaluationCard(
                      title: 'Total Kompen',
                      number: '60',
                      time: 'JAM',
                    ),
                    EvaluationCard(
                      title: 'Kompen Lunas',
                      number: '15',
                      time: 'JAM',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EvaluationCard extends StatelessWidget {
  final String title;
  final String number;
  final String time;
  const EvaluationCard({
    super.key,
    required this.title,
    required this.number,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primary,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppFonts.readexProSemiBold(
              fontSize: 12,
              color: AppColors.darkgreen,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            number,
            style: AppFonts.readexProSemiBold(
              fontSize: 40,
              color: AppColors.darkgreen,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            time,
            style: AppFonts.readexProSemiBold(
              fontSize: 16,
              color: AppColors.darkgreen,
            ),
          ),
        ],
      ),
    );
  }
}
