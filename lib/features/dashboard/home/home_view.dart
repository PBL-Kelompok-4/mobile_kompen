import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistem_kompen_app/features/base_view.dart';
import 'package:sistem_kompen_app/features/dashboard/home/home_view_model.dart';
import 'package:sistem_kompen_app/ui/components/custom_appbar.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/widgets/progres_kompen_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(
        baseApi: Provider.of(context),
      ),
      onModelReady: (HomeViewModel model) => model.initModel(),
      onModelDispose: (HomeViewModel model) => model.disposeModel(),
      builder: (BuildContext context, HomeViewModel model, _) {
        return Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0.5,
            automaticallyImplyLeading: false,
            title: const CustomAppbar(
              label: 'SISTEM KOMPEN',
            ),
          ),
          body: model.isBusy
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                )
              : const HomeContent(),
        );
      },
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeViewModel model = Provider.of<HomeViewModel>(context);
    return SingleChildScrollView(
      child: Column(
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
                      child: Icon(
                        Icons.person,
                        color: AppColors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.dashboard?.nama ?? '-',
                          style: AppFonts.readexProSemiBold(
                            fontSize: 16,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          model.dashboard?.nomorInduk ?? '-',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EvaluationCard(
                      title: 'Total Alpha',
                      number: '${model.dashboard?.jamAlpha ?? 0}',
                      time: 'JAM',
                    ),
                    EvaluationCard(
                      title: 'Total Kompen',
                      number: '${model.dashboard?.jamKompen ?? 0}',
                      time: 'JAM',
                    ),
                    EvaluationCard(
                      title: 'Kompen Lunas',
                      number: '${model.dashboard?.jamKompenSelesai ?? 0}',
                      time: 'JAM',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'STATUS KOMPENSASI',
                  style: AppFonts.readexProBold(
                    color: AppColors.secondary,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                model.progresKompenData == null
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Text(
                            'Sedang Tidak Mengerjakan Kompen',
                            style: AppFonts.readexProSemiBold(
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      )
                    : ProgresKompenCard(
                        data: model.progresKompenData!,
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
