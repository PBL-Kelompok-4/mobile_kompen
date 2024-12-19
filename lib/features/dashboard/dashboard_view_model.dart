import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/features/base_view_model.dart';
import 'package:sistem_kompen_app/features/dashboard/history/history_view.dart';
import 'package:sistem_kompen_app/features/dashboard/home/home_view.dart';
import 'package:sistem_kompen_app/features/dashboard/profile/profile_view.dart';
import 'package:sistem_kompen_app/features/dashboard/task/task_view.dart';
import 'package:sistem_kompen_app/ui/shared/images.dart';

class DashboardViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  List<Widget> get pages => [
        const HomeView(),
        const TaskView(),
        const HistoryView(),
        const ProfileView(),
      ];

  List<String> listIconsActive = [
    AppImages.icHomeActive,
    AppImages.icTaskActive,
    AppImages.icHistoryActive,
    AppImages.icProfileActive,
  ];
  List<String> listIconsDisable = [
    AppImages.icHomeDisable,
    AppImages.icTaskDisable,
    AppImages.icHistoryDisable,
    AppImages.icProfileDisable,
  ];

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  @override
  Future<void> initModel() async {
    setBusy(true);
    super.initModel();
    setBusy(false);
  }

  @override
  Future<void> disposeModel() async {
    super.disposeModel();
  }
}
