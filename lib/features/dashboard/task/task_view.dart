import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistem_kompen_app/features/base_view.dart';
import 'package:sistem_kompen_app/features/dashboard/task/task_view_model.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';
import 'package:sistem_kompen_app/ui/shared/fonts.dart';
import 'package:sistem_kompen_app/ui/widgets/kompen_card.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<TaskViewModel>(
      model: TaskViewModel(
        baseApi: Provider.of(context),
      ),
      onModelReady: (TaskViewModel model) => model.initModel(),
      onModelDispose: (TaskViewModel model) => model.disposeModel(),
      builder: (BuildContext context, TaskViewModel model, _) {
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
                AdminContent(),
                DosenContent(),
                TendikContent(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AdminContent extends StatelessWidget {
  const AdminContent({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskViewModel model = Provider.of<TaskViewModel>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const TaskMenuCard(),
          Expanded(
            child: model.adminKompen.isEmpty
                ? Center(
                    child: Text(
                      'Belum ada tugas',
                      style: AppFonts.readexProRegular(
                        fontSize: 16,
                        color: AppColors.grey,
                      ),
                    ),
                  )
                : ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: model.adminKompen.length,
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 120,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final data = model.adminKompen[index];
                      return KompenCard(data: data);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class DosenContent extends StatelessWidget {
  const DosenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskViewModel model = Provider.of<TaskViewModel>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const TaskMenuCard(),
          Expanded(
            child: model.dosenKompen.isEmpty
                ? Center(
                    child: Text(
                      'Belum ada tugas',
                      style: AppFonts.readexProRegular(
                        fontSize: 16,
                        color: AppColors.grey,
                      ),
                    ),
                  )
                : ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: model.dosenKompen.length,
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 120,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final data = model.dosenKompen[index];
                      return KompenCard(data: data);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class TendikContent extends StatelessWidget {
  const TendikContent({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskViewModel model = Provider.of<TaskViewModel>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const TaskMenuCard(),
          Expanded(
            child: model.tendikKompen.isEmpty
                ? Center(
                    child: Text(
                      'Belum ada tugas',
                      style: AppFonts.readexProRegular(
                        fontSize: 16,
                        color: AppColors.grey,
                      ),
                    ),
                  )
                : ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: model.tendikKompen.length,
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 120,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final data = model.tendikKompen[index];
                      return KompenCard(data: data);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class TaskMenuCard extends StatelessWidget {
  const TaskMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
