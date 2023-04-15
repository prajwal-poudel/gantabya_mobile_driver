class CustomerDataModel {
  int id;
  String fullName;
  String profilePicture;
  LatLng source;
  LatLng destination;
  String sourceAddress;
  String destinationAddress;
  int numberOfSeats;
  double totalAmount;

  CustomerDataModel(
      {required this.id,
      required this.fullName,
      required this.profilePicture,
      required this.source,
      required this.destination,
      required this.sourceAddress,
      required this.destinationAddress,
      required this.numberOfSeats,
      required this.totalAmount});
}

class LatLng {
  double latitude;
  double longitude;

  LatLng({required this.latitude, required this.longitude});
}
