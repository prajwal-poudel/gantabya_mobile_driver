import '../../data/network/error_handler.dart';

class ServerErrorHandler {
  DataSource? dataInfo; // 200 or 400
  String? message; //error or success

  ServerErrorHandler(this.dataInfo, this.message);
}
