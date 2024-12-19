import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sistem_kompen_app/core/api/base_api.dart';
import 'package:sistem_kompen_app/core/models/login_model.dart';
import 'package:sistem_kompen_app/core/services/pref_service.dart';
import 'package:sistem_kompen_app/features/base_view_model.dart';
import 'package:sistem_kompen_app/ui/components/custom_snackbar.dart';
import 'package:sistem_kompen_app/ui/routes/app_routes.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';

class LoginViewModel extends BaseViewModel {
  LoginViewModel({
    required this.baseApi,
  });
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final BaseApi baseApi;
  String apiMessage = '';
  @override
  Future<void> initModel() async {
    setBusy(true);
    super.initModel();
    setBusy(false);
  }

  @override
  Future<void> disposeModel() async {
    usernameController.dispose();
    passwordController.dispose();
    super.disposeModel();
  }

  bool get isFormValid {
    return usernameController.text.isNotEmpty && passwordController.text.isNotEmpty;
  }

  void updateUsername(String value) {
    usernameController.text = value;
    notifyListeners();
  }

  void updatePassword(String value) {
    passwordController.text = value;
    notifyListeners();
  }

  Future<void> login(BuildContext context) async {
    setBusy(true);
    try {
      final LoginRequest request = LoginRequest(
        username: usernameController.text,
        password: passwordController.text,
      );

      log("Request Data: ${request.toJson()}");

      final HttpResponse<LoginResponse> loginResponse = await baseApi.login(
        request,
      );

      log("Response Status Code: ${loginResponse.response.statusCode}");
      log("Response Data: ${loginResponse.data.toJson()}");
      if (loginResponse.response.statusCode == 200) {
        final LoginResponse result = loginResponse.data;
        await PrefService.saveAuthToken(result.token!);

        if (context.mounted) {
          await Navigator.of(context).pushReplacementNamed(
            AppRoutes.dashboard,
          );
        }
      } else if (loginResponse.response.statusCode == 401) {
        if (context.mounted) {
          CustomSnackbar.show(
            context,
            message: 'Username atau Password Anda Salah',
            backgroundColor: AppColors.red,
          );
        }
      } else {
        if (context.mounted) {
          CustomSnackbar.show(
            context,
            message: 'Username atau Password Anda Salah',
            backgroundColor: AppColors.red,
          );
        }
      }
    } on DioException catch (e) {
      log("Error: $e");
    }
    setBusy(false);
  }
}
