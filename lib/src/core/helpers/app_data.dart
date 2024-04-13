import 'package:teeth_align_app/src/core/enums/basics.dart';

final appData = AppData();

class AppData {
  static final AppData _appData = AppData._internal();

  Role? role;
  String? fullName;
  int userId = 0;
  String? chaUserId;
  bool isChatAvailable = false;

  factory AppData() {
    return _appData;
  }

  AppData._internal();
}
