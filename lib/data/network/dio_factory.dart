import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/app_prefs.dart';
import '../../app/constant.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";

class DioFactory {
  // AppPreferences _appPreferences;
  // DioFactory(this._appPreferences);

  Future<Dio> getAuthDio() async {
    Duration _timeOut = const Duration(minutes: 1); // 1 min
    // String language = await _appPreferences.getAppLanguage();
    Dio dio = Dio();
    var token = await AppPreferences(await SharedPreferences.getInstance())
        .getJwtToken();
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: token,
      // DEFAULT_LANGUAGE: language
    };
    dio.options = BaseOptions(
        baseUrl: Constant.baseUrl,
        connectTimeout: _timeOut,
        receiveTimeout: _timeOut,
        validateStatus: (status) => true,
        headers: headers);
    if (kReleaseMode) {
      print("release mode no logger");
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }
    return dio;
  }

  Future<Dio> getDio() async {
    Duration _timeOut = const Duration(minutes: 1); // 1 min
    // String language = await _appPreferences.getAppLanguage();
    Dio dio = Dio();
    // var token = await AppPreferences(await SharedPreferences.getInstance())
    //     .getJwtToken();
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      // AUTHORIZATION: token,
      // DEFAULT_LANGUAGE: language
    };
    dio.options = BaseOptions(
        baseUrl: Constant.baseUrl,
        connectTimeout: _timeOut,
        receiveTimeout: _timeOut,
        validateStatus: (status) => true,
        headers: headers);
    if (kReleaseMode) {
      print("release mode no logger");
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }
    return dio;
  }
}
