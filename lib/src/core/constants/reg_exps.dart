class RegExps {
  static RegExp email = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static RegExp password = RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).{8,}$');

  static RegExp passwordAtLeastOneDigit = RegExp(r'(?=.*\d)');

  static RegExp passwordAtLeastOneLetter = RegExp(r'(?=.*[a-zA-Z])');

  static RegExp passwordAtLeast8Length = RegExp(r'.{8,}');
}
