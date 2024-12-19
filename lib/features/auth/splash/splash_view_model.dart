import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/core/services/pref_service.dart';
import 'package:sistem_kompen_app/features/base_view_model.dart';
import 'package:sistem_kompen_app/ui/routes/app_routes.dart';

class SplashViewModel extends BaseViewModel {
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

  Future<void> navigateSplash(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    final authToken = await PrefService.getAuthToken();

    log('Auth Token : $authToken');

    if (context.mounted) {
      if (authToken != null) {
        Navigator.of(context).pushReplacementNamed(
          AppRoutes.dashboard,
        );
      } else {
        Navigator.of(context).pushReplacementNamed(
          AppRoutes.login,
        );
      }
    }
  }
}
