// import 'package:learn_clean_architecture/app/constant.dart';
// import 'package:learn_clean_architecture/data/response/responses.dart';
// import 'package:retrofit/http.dart';
// import 'package:dio/dio.dart';

// part 'app_api.g.dart';

// @RestApi(baseUrl: Constant.baseUrl)
// abstract class AppServiceClient {
//   factory AppServiceClient(Dio dio, {String? baseUrl}) = _AppServiceClient;

//   @POST("/login")
//   Future<AuthenticationResponse> login(
//     @Field("email") String email,
//     @Field("password") String password,
//     @Field("imei") String imei,
//     @Field("deviceType") String deviceType,
//   );
// }
