// import 'dart:async';
// import 'dart:developer';

// import '../../data/network/filure.dart';
// import '../../domain/usecase/login_usecase.dart';
// import '../common/freezed_data_classes.dart';
// import '../Base/base_viewmodel.dart';

// class LoginViewModel extends BaseViewModel
//     with LoginViewModelInputs, LoginViewModelOutputs {
//   StreamController _userNameStreamController =
//       StreamController<String>.broadcast();
//   StreamController _passwordStreamController =
//       StreamController<String>.broadcast();
//   StreamController _isAllInputValidStreamController =
//       StreamController<void>.broadcast();

//   var loginObject = LoginObject("", "");

//   LoginUseCase _loginUseCase;
//   LoginViewModel(this._loginUseCase);

//   @override
//   void start() {
//     // inputState.add(ContentState());
//   }

//   @override
//   void dispose() {
//     _userNameStreamController.close();
//     _passwordStreamController.close();
//     _isAllInputValidStreamController.close();
//   }

//   @override
//   Sink get inputPassword => _passwordStreamController.sink;

//   @override
//   Sink get inputUserName => _userNameStreamController.sink;

//   @override
//   Sink get inputIsAllInputValid => _isAllInputValidStreamController.sink;

//   @override
//   login() async {
//     (await _loginUseCase.execute(
//             LoginUseCaseInput(loginObject.userName, loginObject.password)))
//         .fold(
//             (failure) => {
//                   // left -> Failure
//                   print(failure.message)
//                 },
//             (data) => {
//                   // right -> Success
//                   print(data.customer?.name)
//                 });
//   }

//   @override
//   setPassword(String password) {
//     inputPassword.add(password);
//     loginObject = loginObject.copyWith(password: password);
//     _validate();
//   }

//   @override
//   setUsername(String username) {
//     inputUserName.add(username);
//     loginObject = loginObject.copyWith(userName: username);
//     _validate();
//   }

//   @override
//   Stream<bool> get outputIsPasswordValid => _passwordStreamController.stream
//       .map((password) => _isPasswordValid(password));

//   @override
//   Stream<bool> get outputIsUserNameValid => _userNameStreamController.stream
//       .map((username) => _isUserNameValid(username));
//   @override
//   Stream<bool> get outputIsAllInputValid =>
//       _isAllInputValidStreamController.stream.map((_) => _isAllInputValid());

//   // private function

//   _validate() {
//     inputIsAllInputValid.add(null);
//   }

//   bool _isPasswordValid(String password) {
//     return password.isNotEmpty;
//   }

//   bool _isUserNameValid(String username) {
//     return username.isNotEmpty;
//   }

//   bool _isAllInputValid() {
//     return (_isPasswordValid(loginObject.password) &&
//         _isUserNameValid(loginObject.userName));
//   }
// }

// abstract class LoginViewModelInputs {
//   // three function
//   setUsername(String username);
//   setPassword(String password);
//   login();
//   // two sinks
//   Sink get inputUserName;
//   Sink get inputPassword;
//   Sink get inputIsAllInputValid;
// }

// abstract class LoginViewModelOutputs {
//   Stream<bool> get outputIsUserNameValid;
//   Stream<bool> get outputIsPasswordValid;
//   Stream<bool> get outputIsAllInputValid;
// }
