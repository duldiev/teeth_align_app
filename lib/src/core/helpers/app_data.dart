import 'package:teeth_align_app/src/core/enums/basics.dart';

final appData = AppData();

class AppData {
  static final AppData _appData = AppData._internal();

  Role? role;
  String? fullName;

  factory AppData() {
    return _appData;
  }

  AppData._internal();
}
