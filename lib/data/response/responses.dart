// import 'package:json_annotation/json_annotation.dart';

// part 'responses.g.dart';

// @JsonSerializable()
// class BaseResponse {
//   @JsonKey(name: "status")
//   int? baseResponseStatus;
//   @JsonKey(name: "message")
//   String? message;

//   // BaseResponse(this.baseResponseStatus, this.message);
// }

// @JsonSerializable()
// class CustomerResponse {
//   @JsonKey(name: "id")
//   String? customerId;
//   @JsonKey(name: "name")
//   String? customerName;
//   @JsonKey(name: "numOfNotifications")
//   int? notificationCount;
//   CustomerResponse(this.customerId, this.customerName, this.notificationCount);

//   // from json
//   factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
//       _$CustomerResponseFromJson(json);
//   // from json

//   Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
// }

// @JsonSerializable()
// class ContactResponse {
//   @JsonKey(name: "phone")
//   String? phone;
//   @JsonKey(name: "link")
//   String? link;
//   @JsonKey(name: "email")
//   String? email;

//   ContactResponse(this.phone, this.link, this.email);

//   // from json
//   factory ContactResponse.fromJson(Map<String, dynamic> json) =>
//       _$ContactResponseFromJson(json);
//   // from json

//   Map<String, dynamic> toJson() => _$ContactResponseToJson(this);
// }

// @JsonSerializable()
// class AuthenticationResponse extends BaseResponse {
//   @JsonKey(name: "customer")
//   CustomerResponse? customer;
//   @JsonKey(name: "contact")
//   ContactResponse? contact;

//   AuthenticationResponse(this.contact, this.customer);
//   // from json
//   factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
//       _$AuthenticationResponseFromJson(json);
//   // from json

//   Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
// }
