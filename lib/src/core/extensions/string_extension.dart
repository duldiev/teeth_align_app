import 'dart:ui';

extension StringExtensions on String? {
  DateTime? toDateTime([DateTime? def]) {
    if (this == null) return def;
    if (this!.length != 10) return def;
    return DateTime.tryParse(
      this!.substring(6) + this!.substring(3, 5) + this!.substring(0, 2),
    ); // 01.34.67890
  }

  bool isNumeric() {
    if (this == null) return false;
    return num.tryParse(this!.replaceAll(RegExp(r','), '.')) != null;
  }

  String capitalize() => this == null
      ? ''
      : '${this![0].toUpperCase()}${this!.substring(1).toLowerCase()}';

  bool isExist() => this != null && this!.isNotEmpty;

  Color parseHex() => Color(
        int.parse(
          '${0xFF}${this?.replaceAll('#', '') ?? 000000}',
          radix: 16,
        ),
      );
}
