// import 'package:learn_clean_architecture/app/functions.dart';
// import 'package:learn_clean_architecture/data/network/filure.dart';
// import 'package:dartz/dartz.dart';
// import 'package:learn_clean_architecture/data/request/request.dart';
// import 'package:learn_clean_architecture/domain/model/model.dart';
// import 'package:learn_clean_architecture/domain/repository/repository.dart';
// import 'package:learn_clean_architecture/domain/usecase/base_usecase.dart';

// class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
//   Repository _repository;
//   LoginUseCase(this._repository);
//   @override
//   Future<Either<Failure, Authentication>> execute(
//       LoginUseCaseInput input) async {
//     DeviceInfo deviceInfo = await getDeviceDetails();
//     return await _repository.login(LoginRequest(
//         input.email, input.password, deviceInfo.identifier, deviceInfo.name));
//   }
// }

// class LoginUseCaseInput {
//   String email;
//   String password;

//   LoginUseCaseInput(this.email, this.password);
// }
