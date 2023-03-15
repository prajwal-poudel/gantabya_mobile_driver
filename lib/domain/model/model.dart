import 'dart:core';

class SliderObject {
  String title;
  String subTitle;
  String image;
  SliderObject(this.title, this.subTitle, this.image);
}

class Customer {
  String id;
  String name;
  int notificationCount;

  Customer(this.id, this.name, this.notificationCount);
}

class Contact {
  String phone;
  String link;
  String email;

  Contact(this.phone, this.link, this.email);
}

class Authentication {
  Customer? customer;
  Contact? contact;

  Authentication(this.customer, this.contact);
}

class DeviceInfo {
  String name;
  String identifier;
  String version;
  DeviceInfo(this.name, this.identifier, this.version);
}

class CustomerInfo {
  int id;
  String profileImage;
  String fullName;
  double distanceFromDriver;
  double totalCost;
  String pickUpAddress;
  String dropOffAddress;
  double rideDistance;

  CustomerInfo(
      {required this.id,
      required this.profileImage,
      required this.fullName,
      required this.distanceFromDriver,
      required this.totalCost,
      required this.dropOffAddress,
      required this.pickUpAddress,
      required this.rideDistance});
}
