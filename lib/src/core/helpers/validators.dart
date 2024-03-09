import 'package:teeth_align_app/src/core/constants/reg_exps.dart';
import 'package:teeth_align_app/src/core/extensions/string_extension.dart';

class Validators {
  static const String _emptyText = 'Please, enter your';

  static String? iin(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText IIN';
    }
    if (!value.isNumeric()) return 'Must be only numeric';
    if (value?.length != 12) {
      return "IIN must be 12 length";
    }
    return null;
  }

  static String? weight(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText weight';
    }
    if (!value.isNumeric()) return 'Incorrect';
    if (double.parse(value!).round() > 150) {
      return 'Wight is too much';
    }
    return null;
  }

  static String? birthDate(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText birth date';
    }
    return null;
  }

  static String? username(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText username';
    }
    return null;
  }

  static String? firstName(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText first name';
    }
    return null;
  }

  static String? lastName(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText last name';
    }
    return null;
  }

  static String? gender(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText gender';
    }
    return null;
  }

  static String? email(String? value) {
    if (value?.isEmpty == true) {
      return '$_emptyText email';
    }
    return !RegExps.email.hasMatch(value ?? '') ? 'Invalid email' : null;
  }

  static String? password(String? value) {
    const invalidText = 'Invalid password';

    if (value?.isEmpty == true) {
      return '$_emptyText password';
    }
    value = value ?? '';
    final overall = !RegExps.password.hasMatch(value) ? invalidText : null;
    return overall;
  }

  static String? confirmPassword(String? value, String? password) {
    if (value?.isEmpty == true) {
      return '$_emptyText confirm password';
    }
    return value != password ? 'Doesn\'t match with password' : null;
  }
}
