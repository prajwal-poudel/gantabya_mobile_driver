// // to convert response into nonnullable object (model)

// import 'package:gantabya_app/app/extensions.dart';

// import '../../domain/model/model.dart';
// import '../response/responses.dart';

// const EMPTY = "";
// const ZERO = 0;

// extension CustomerResponseMapper on CustomerResponse? {
//   Customer toDomain() {
//     return Customer(
//         this?.customerId?.orEmpty() ?? EMPTY,
//         this?.customerName?.orEmpty() ?? EMPTY,
//         this?.notificationCount?.orZero() ?? ZERO);
//   }
// }

// extension ContactResponseMapper on ContactResponse? {
//   Contact toDomain() {
//     return Contact(this?.phone?.orEmpty() ?? EMPTY,
//         this?.link?.orEmpty() ?? EMPTY, this?.email?.orEmpty() ?? EMPTY);
//   }
// }

// extension AuthenticationResponseMapper on AuthenticationResponse? {
//   Authentication toDomain() {
//     return Authentication(
//         this?.customer?.toDomain(), this?.contact?.toDomain());
//   }
// }
