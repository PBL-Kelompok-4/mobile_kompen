import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sistem_kompen_app/core/models/dashboard_model.dart';
import 'package:sistem_kompen_app/core/models/detail_kompen_model.dart';
import 'package:sistem_kompen_app/core/models/list_kompen_model.dart';
import 'package:sistem_kompen_app/core/models/login_model.dart';
import 'package:sistem_kompen_app/core/models/message_model.dart';
import 'package:sistem_kompen_app/core/models/progres_kompen_model.dart';
import 'package:sistem_kompen_app/core/models/user_model.dart';

part 'base_api.g.dart';

@RestApi()
abstract class BaseApi {
  factory BaseApi(Dio dio, {String baseUrl}) = _BaseApi;

  /// [LOGIN]
  @POST('/api/login')
  Future<HttpResponse<LoginResponse>> login(
    @Body() LoginRequest request,
  );

  /// [GET PROFILE]
  @GET('/api/profile')
  Future<HttpResponse<UserResponse>> getProfile(
    @Header('Authorization') String bearerToken,
  );

  /// [GET DASHBOARD]
  @GET('/api/dashboard')
  Future<HttpResponse<DashboardResponse>> getDashboard(
    @Header('Authorization') String bearerToken,
  );

  /// [GET PROGRES KOMPEN]
  @GET('/api/progres-kompen')
  Future<HttpResponse<ProgresKompenResponse>> getProgresKompen(
    @Header('Authorization') String bearerToken,
  );

  /// [GET LIST KOMPEN]
  @POST('/api/kompen/list')
  Future<HttpResponse<ListKompenResponse>> getListKompen(
    @Header('Authorization') String bearerToken,
  );

  /// [GET DETAIL KOMPEN]
  @GET('/api/kompen/{id}/show')
  Future<HttpResponse<DetailKompenResponse>> getDetailKompen(
    @Header('Authorization') String bearerToken,
    @Path('id') int id,
  );

  /// [LOGOUT]
  @POST('/api/logout')
  Future<HttpResponse<MessageResponse>> logout(
    @Header('Authorization') String bearerToken,
  );
}
