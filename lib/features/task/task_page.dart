import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sistem_kompen_app/core/colors.dart';
import 'package:sistem_kompen_app/core/fonts.dart';
import 'package:sistem_kompen_app/core/images.dart';
import 'package:sistem_kompen_app/features/task/task_detail_page.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.grey,
                ),
              ),
              child: TabBar(
                indicatorColor: AppColors.white,
                indicator: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(8),
                ),
                labelColor: AppColors.white,
                labelStyle: AppFonts.readexProBold(
                  fontSize: 18,
                  color: AppColors.white,
                ),
                unselectedLabelColor: AppColors.secondary,
                tabs: const [
                  Tab(text: 'Admin'),
                  Tab(text: 'Dosen'),
                  Tab(text: 'Tendik'),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            AdminPage(),
            DosenPage(),
            TendikPage(),
          ],
        ),
      ),
    );
  }
}

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: AppColors.grey,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kompetensi',
                  style: AppFonts.readexProSemiBold(
                    fontSize: 16,
                    color: AppColors.grey,
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.darkgreen,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daftar Tugas',
                style: AppFonts.readexProSemiBold(
                  color: AppColors.black,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Lihat Semua',
                  style: AppFonts.readexProRegular(
                    fontSize: 12,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 120,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TaskDetailPage(),
                      ),
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
                                '25/10/2004 - 25/11/2024',
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
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DosenPage extends StatelessWidget {
  const DosenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TendikPage extends StatelessWidget {
  const TendikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
