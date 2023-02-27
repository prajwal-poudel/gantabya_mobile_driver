// import 'package:flutter/foundation.dart';

// const String APPLICATION_JSON = "application/json";
// const String CONTENT_TYPE = "content-type";
// const String ACCEPT = "accept";
// const String AUTHORIZATION = "authorization";
// const String DEFAULT_LANGUAGE = "language";

// class DioFactory {
//   AppPreferences _appPreferences;
//   DioFactory(this._appPreferences);

//   Future<Dio> getDio() async {
//     Duration _timeOut = const Duration(minutes: 1); // 1 min
//     String language = await _appPreferences.getAppLanguage();
//     Dio dio = Dio();
//     Map<String, String> headers = {
//       CONTENT_TYPE: APPLICATION_JSON,
//       ACCEPT: APPLICATION_JSON,
//       AUTHORIZATION: Constant.token,
//       DEFAULT_LANGUAGE: language
//     };
//     dio.options = BaseOptions(
//         baseUrl: Constant.baseUrl,
//         connectTimeout: _timeOut,
//         receiveTimeout: _timeOut,
//         headers: headers);
//     if (kReleaseMode) {
//       print("release mode no logger");
//     } else {
//       dio.interceptors.add(PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseHeader: true,
//       ));
//     }
//     return dio;
//   }
// }
