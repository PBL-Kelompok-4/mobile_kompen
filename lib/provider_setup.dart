import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sistem_kompen_app/core/api/base_api.dart';
import 'package:sistem_kompen_app/core/api/url_api.dart';

List<SingleChildWidget> providers = <SingleChildWidget>[
  ...apiServices,
];

List<SingleChildWidget> apiServices = <SingleChildWidget>[
  Provider.value(
    value: BaseApi(
      Dio(
        BaseOptions(
          headers: <String, String>{
            'Content-Type': 'application/json',
          },
          connectTimeout: const Duration(seconds: 60),
          baseUrl: UrlApi.baseUrl,
          validateStatus: (status) => status! >= 200 && status < 500,
        ),
      ),
    ),
  ),
];
