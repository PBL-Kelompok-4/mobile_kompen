import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sistem_kompen_app/core/api/base_api.dart';
import 'package:sistem_kompen_app/core/models/list_kompen_model.dart';
import 'package:sistem_kompen_app/core/services/pref_service.dart';
import 'package:sistem_kompen_app/features/base_view_model.dart';

class TaskViewModel extends BaseViewModel {
  TaskViewModel({
    required this.baseApi,
  });
  final BaseApi baseApi;
  List<KompenData> adminKompen = [];
  List<KompenData> dosenKompen = [];
  List<KompenData> tendikKompen = [];
  String apiMessage = '';

  @override
  Future<void> initModel() async {
    setBusy(true);
    super.initModel();
    await fetchKompen();
    setBusy(false);
  }

  @override
  Future<void> disposeModel() async {
    super.disposeModel();
  }

  Future<void> fetchKompen() async {
    setBusy(true);
    try {
      final String? authToken = await PrefService.getAuthToken();
      final HttpResponse<ListKompenResponse> kompenResponse = await baseApi.getListKompen(
        'Bearer $authToken',
      );
      if (kompenResponse.response.statusCode == 200) {
        final List<KompenData> allKompen = kompenResponse.data.data;
        adminKompen = allKompen.where((kompen) => kompen.personilAkademik.idLevel == 1).toList();
        dosenKompen = allKompen.where((kompen) => kompen.personilAkademik.idLevel == 2).toList();
        tendikKompen = allKompen.where((kompen) => kompen.personilAkademik.idLevel == 3).toList();
      } else {
        apiMessage = 'Error ambil data kompensasi';
      }
    } on DioException catch (e) {
      apiMessage = 'Error: $e';
    }
    setBusy(false);
  }
}
