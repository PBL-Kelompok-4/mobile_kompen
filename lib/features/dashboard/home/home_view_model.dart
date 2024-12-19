import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sistem_kompen_app/core/api/base_api.dart';
import 'package:sistem_kompen_app/core/models/dashboard_model.dart';
import 'package:sistem_kompen_app/core/models/progres_kompen_model.dart';
import 'package:sistem_kompen_app/core/services/pref_service.dart';
import 'package:sistem_kompen_app/features/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel({
    required this.baseApi,
  });
  final BaseApi baseApi;
  DashboardData? dashboard;
  ProgresKompenData? progresKompenData;

  String apiMessage = '';

  @override
  Future<void> initModel() async {
    setBusy(true);
    super.initModel();
    await fetchDashboard();
    await fetchProgresKompen();
    setBusy(false);
  }

  @override
  Future<void> disposeModel() async {
    super.disposeModel();
  }

  Future<void> fetchDashboard() async {
    setBusy(true);
    try {
      final String? authToken = await PrefService.getAuthToken();
      final HttpResponse<DashboardResponse> dashboardResponse = await baseApi.getDashboard(
        'Bearer $authToken',
      );
      log("Response Status Code: ${dashboardResponse.response.statusCode}");
      log("Response Data: ${dashboardResponse.data}");

      if (dashboardResponse.response.statusCode == 200) {
        dashboard = dashboardResponse.data.data;
      } else {
        apiMessage = 'Error fetching dashboard';
      }
    } on DioException catch (e) {
      apiMessage = 'Error: $e';
    }
    setBusy(false);
  }

  Future<void> fetchProgresKompen() async {
    setBusy(true);
    try {
      final String? authToken = await PrefService.getAuthToken();
      final HttpResponse<ProgresKompenResponse> progresKompenResponse = await baseApi.getProgresKompen(
        'Bearer $authToken',
      );
      log("Response Status Code: ${progresKompenResponse.response.statusCode}");
      log("Response Data: ${progresKompenResponse.data.toJson()}");

      if (progresKompenResponse.response.statusCode == 200) {
        progresKompenData = progresKompenResponse.data.data;
      } else {
        apiMessage = 'Error fetching progres kompen';
      }
    } on DioException catch (e) {
      apiMessage = 'Error: $e';
    }
    setBusy(false);
  }
}
