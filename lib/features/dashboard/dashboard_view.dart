import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sistem_kompen_app/features/base_view.dart';
import 'package:sistem_kompen_app/features/dashboard/dashboard_view_model.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<DashboardViewModel>(
      model: DashboardViewModel(),
      onModelReady: (DashboardViewModel model) => model.initModel(),
      onModelDispose: (DashboardViewModel model) => model.disposeModel(),
      builder: (BuildContext context, DashboardViewModel model, _) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: IndexedStack(
            index: model.selectedIndex,
            children: model.pages,
          ),
          floatingActionButton: const DashboardContent(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardViewModel model = Provider.of<DashboardViewModel>(context);
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(model.listIconsActive.length, (index) {
          return InkWell(
            onTap: () => model.onItemTapped(index),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: SvgPicture.asset(
              model.selectedIndex == index ? model.listIconsActive[index] : model.listIconsDisable[index],
              colorFilter: const ColorFilter.mode(
                AppColors.primary,
                BlendMode.srcIn,
              ),
            ),
          );
        }),
      ),
    );
  }
}
