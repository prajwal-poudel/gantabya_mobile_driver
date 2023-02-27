// enum DataSource {
//   SUCCESS,
//   NO_CONTENT,
//   BAD_REQUEST,
//   FORBIDDEN,
//   UNAUTHORIZED,
//   NOT_FOUND,
//   INTERNAL_SERVER_ERROR,
//   CONNECTION_TIMEOUT,
//   CANCEL,
//   RECEIVE_TIMEOUT,
//   SEND_TIMEOUT,
//   CACHE_ERROR,
//   NO_INTERNET_CONNECTION,
//   UNKNOWN_ERROR,
//   DEFAULT
// }

// class ErrorHandler implements Exception {
//   late Failure failure;
//   ErrorHandler.handle(dynamic error) {
//     if (error is DioError) {
//       //dio error so it is error from response of the api
//       failure = _handleError(error);
//     } else {
//       // default error
//       failure = DataSource.DEFAULT.getFailure();
//     }
//   }

//   Failure _handleError(DioError error) {
//     switch (error.type) {
//       case DioErrorType.connectionTimeout:
//         return DataSource.CONNECTION_TIMEOUT.getFailure();
//       case DioErrorType.sendTimeout:
//         return DataSource.SEND_TIMEOUT.getFailure();

//       case DioErrorType.receiveTimeout:
//         return DataSource.RECEIVE_TIMEOUT.getFailure();
//       case DioErrorType.badResponse:
//         switch (error.response?.statusCode) {
//           case ResponseCode.BAD_REQUEST:
//             return DataSource.BAD_REQUEST.getFailure();
//           case ResponseCode.FORBIDDEN:
//             return DataSource.FORBIDDEN.getFailure();
//           case ResponseCode.UNAUTHORIZED:
//             return DataSource.UNAUTHORIZED.getFailure();
//           case ResponseCode.NOT_FOUND:
//             return DataSource.NOT_FOUND.getFailure();
//           case ResponseCode.INTERNAL_SERVER_ERROR:
//             return DataSource.INTERNAL_SERVER_ERROR.getFailure();
//           default:
//             return DataSource.DEFAULT.getFailure();
//         }

//       case DioErrorType.cancel:
//         return DataSource.CANCEL.getFailure();

//       case DioErrorType.connectionError:
//         return DataSource.NO_INTERNET_CONNECTION.getFailure();

//       case DioErrorType.unknown:
//         return DataSource.DEFAULT.getFailure();
//       default:
//         return DataSource.DEFAULT.getFailure();
//     }
//   }
// }

// extension DataSourceExtention on DataSource {
//   Failure getFailure() {
//     switch (this) {
//       case DataSource.BAD_REQUEST:
//         return Failure(ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST);
//       case DataSource.FORBIDDEN:
//         return Failure(ResponseCode.FORBIDDEN, ResponseMessage.FORBIDDEN);

//       case DataSource.UNAUTHORIZED:
//         return Failure(ResponseCode.UNAUTHORIZED, ResponseMessage.UNAUTHORIZED);

//       case DataSource.NOT_FOUND:
//         return Failure(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND);

//       case DataSource.INTERNAL_SERVER_ERROR:
//         return Failure(ResponseCode.INTERNAL_SERVER_ERROR,
//             ResponseMessage.INTERNAL_SERVER_ERROR);

//       case DataSource.CONNECTION_TIMEOUT:
//         return Failure(ResponseCode.CONNECTION_TIMEOUT,
//             ResponseMessage.CONNECTION_TIMEOUT);
//       case DataSource.CANCEL:
//         return Failure(ResponseCode.CANCEL, ResponseMessage.CANCEL);
//       case DataSource.RECEIVE_TIMEOUT:
//         return Failure(
//             ResponseCode.RECEIVE_TIMEOUT, ResponseMessage.RECEIVE_TIMEOUT);
//       case DataSource.SEND_TIMEOUT:
//         return Failure(ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT);
//       case DataSource.CACHE_ERROR:
//         return Failure(ResponseCode.CACHE_ERROR, ResponseMessage.CACHE_ERROR);
//       case DataSource.NO_INTERNET_CONNECTION:
//         return Failure(ResponseCode.NO_INTERNET_CONNECTION,
//             ResponseMessage.NO_INTERNET_CONNECTION);
//       case DataSource.DEFAULT:
//         return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
//       default:
//         return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
//     }
//   }
// }

// class ResponseCode {
// // api status code

//   static const int SUCCESS = 200;
//   static const int NO_CONTENT = 201;
//   static const int BAD_REQUEST = 400;
//   static const int FORBIDDEN = 403;
//   static const int UNAUTHORIZED = 401;
//   static const int NOT_FOUND = 404;
//   static const int INTERNAL_SERVER_ERROR = 500;

//   // Local status code

//   static const int DEFAULT = -1;
//   static const int CONNECTION_TIMEOUT = -2;
//   static const int CANCEL = -3;
//   static const int RECEIVE_TIMEOUT = -4;
//   static const int SEND_TIMEOUT = -5;
//   static const int CACHE_ERROR = -6;
//   static const int NO_INTERNET_CONNECTION = -7;
// }

// class ResponseMessage {
// // api Response Message

//   static const String SUCCESS = "Sucess";
//   static const String NO_CONTENT = "Success with no content";
//   static const String BAD_REQUEST = "Bad request, try again later";
//   static const String FORBIDDEN = "Forbidden request, try again later";
//   static const String UNAUTHORIZED = "Unautorized user, try again later";
//   static const String NOT_FOUND = "Url is not found, try again later";
//   static const String INTERNAL_SERVER_ERROR =
//       "Internal server error, try again later";

//   // Local Response Message

//   static const String DEFAULT = "Something went wrong, try again later";
//   static const String CONNECTION_TIMEOUT =
//       "Connection timeout, try again later";
//   static const String CANCEL = "Request cancled, try again later";
//   static const String RECEIVE_TIMEOUT = "Timeout, try again later";
//   static const String SEND_TIMEOUT = "Timeout , try again later";
//   static const String CACHE_ERROR = "Cache error, try again later";
//   static const String NO_INTERNET_CONNECTION =
//       "Check your internet connection, try again later";
// }

// class ApiInternalStatus {
//   static const int SUCCESS = 0;
//   static const int FAILURE = 1;
// }
