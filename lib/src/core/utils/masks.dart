import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Masks {
  static MaskTextInputFormatter phoneNumber = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  static MaskTextInputFormatter date = MaskTextInputFormatter(
    mask: '##.##.####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  static MaskTextInputFormatter cardNumber = MaskTextInputFormatter(
    mask: '#### #### #### ####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  static MaskTextInputFormatter cvv = MaskTextInputFormatter(
    mask: '###',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  static MaskTextInputFormatter cardExpirationNumber = MaskTextInputFormatter(
    mask: '##/####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  static MaskTextInputFormatter patientId = MaskTextInputFormatter(
    mask: '####-&&',
    filter: {
      "#": RegExp(r'^[a-zA-Z]+$'),
      "&": RegExp(r'(\d+)'),
    },
    type: MaskAutoCompletionType.lazy,
  );
}
