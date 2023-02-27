// import 'package:learn_clean_architecture/data/data_source/remote_data_source.dart';
// import 'package:learn_clean_architecture/data/mapper/mapper.dart';
// import 'package:learn_clean_architecture/data/network/error_handler.dart';
// import 'package:learn_clean_architecture/data/network/network_info.dart';
// import 'package:learn_clean_architecture/domain/model/model.dart';
// import 'package:learn_clean_architecture/data/request/request.dart';
// import 'package:learn_clean_architecture/data/network/filure.dart';
// import 'package:dartz/dartz.dart';
// import 'package:learn_clean_architecture/domain/repository/repository.dart';

// class RepositoryImpl extends Repository {
//   RemoteDataSource _remoteDataSource;
//   NetworkInfo _networkInfo;
//   RepositoryImpl(this._remoteDataSource, this._networkInfo);
//   @override
//   Future<Either<Failure, Authentication>> login(
//       LoginRequest loginRequest) async {
//     if (await _networkInfo.isConnected) {
//       try {
//         // it safe to call the api
//         final response = await _remoteDataSource.login(loginRequest);
//         if (response.baseResponseStatus == ApiInternalStatus.SUCCESS) {
//           // return data

//           return Right(response.toDomain());
//         } else {
//           // return business logic error

//           return Left(Failure(
//               response.baseResponseStatus ?? ApiInternalStatus.FAILURE,
//               response.message ?? ResponseMessage.DEFAULT));
//         }
//       } catch (error) {
//         return (Left(ErrorHandler.handle(error).failure));
//       }
//     } else {
//       // return connection error

//       return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
//     }
//   }
// }
