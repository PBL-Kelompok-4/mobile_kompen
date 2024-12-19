import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sistem_kompen_app/core/api/base_api.dart';
import 'package:sistem_kompen_app/core/models/login_model.dart';
import 'package:sistem_kompen_app/core/models/message_model.dart';
import 'package:sistem_kompen_app/core/models/user_model.dart';
import 'package:sistem_kompen_app/core/services/pref_service.dart';
import 'package:sistem_kompen_app/features/base_view_model.dart';
import 'package:sistem_kompen_app/ui/components/custom_snackbar.dart';
import 'package:sistem_kompen_app/ui/routes/app_routes.dart';
import 'package:sistem_kompen_app/ui/shared/colors.dart';

class ProfileViewModel extends BaseViewModel {
  ProfileViewModel({
    required this.baseApi,
  });
  final BaseApi baseApi;
  User? user;

  String apiMessage = '';

  @override
  Future<void> initModel() async {
    setBusy(true);
    super.initModel();
    await fetchProfile();
    setBusy(false);
  }

  @override
  Future<void> disposeModel() async {
    super.disposeModel();
  }

  Future<void> fetchProfile() async {
    setBusy(true);
    try {
      final String? authToken = await PrefService.getAuthToken();
      final HttpResponse<UserResponse> userResponse = await baseApi.getProfile(
        'Bearer $authToken',
      );
      log("Response Status Code: ${userResponse.response.statusCode}");
      log("Response Data: ${userResponse.data}");

      if (userResponse.response.statusCode == 200) {
        user = userResponse.data.data;
      } else {
        apiMessage = 'Error fetching user';
      }
    } on DioException catch (e) {
      apiMessage = 'Error: $e';
    }
    setBusy(false);
  }

  Future<void> logout(BuildContext context) async {
    setBusy(true);
    try {
      final String? authToken = await PrefService.getAuthToken();
      final HttpResponse<MessageResponse> loginResponse = await baseApi.logout(
        'Bearer $authToken',
      );

      log("Response Status Code: ${loginResponse.response.statusCode}");
      log("Response Data: ${loginResponse.data}");
      if (loginResponse.response.statusCode == 200) {
        final MessageResponse result = loginResponse.data;
        await PrefService.removeToken();
        if (context.mounted) {
          CustomSnackbar.show(
            context,
            message: result.massage,
            backgroundColor: AppColors.primary,
          );
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.login,
            (Route<dynamic> route) => false,
          );
        }
      } else {
        if (context.mounted) {
          CustomSnackbar.show(
            context,
            message: 'Gagal Logout',
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
