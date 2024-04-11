import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/helpers/validators.dart';
import 'package:teeth_align_app/src/core/utils/masks.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/auth/core/keys.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class UniqueIdFieldView extends StatefulWidget {
  const UniqueIdFieldView({
    super.key,
    required this.state,
  });

  final SignUpState state;

  @override
  State<UniqueIdFieldView> createState() => _UniqueIdFieldViewState();
}

class _UniqueIdFieldViewState extends State<UniqueIdFieldView> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController()
      ..addListener(() {
        if (_controller.text.length == 4) {}
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isPatient = widget.state.registerBody?.role == Role.patient;
    final onlyUpperCase = services.TextInputFormatter.withFunction((
      oldValue,
      newValue,
    ) {
      return newValue.copyWith(text: newValue.text.toUpperCase());
    });
    return Form(
      key: patientFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: TextInput(
          controller: _controller,
          label: 'Введите код ${isPatient ? 'пациента' : 'доктора'}',
          hintText: isPatient ? 'PETA-45' : 'Unique code',
          inputFormatters: [
            isPatient ? Masks.patientId : Masks.doctorId,
            onlyUpperCase,
          ],
          textCapitalization: TextCapitalization.characters,
          validator: Validators.patientId,
          onChanged: (value) => context.read<SUB>().add(
                ChangeRegisterField(
                  field: SignUpField.uniqueId,
                  value: value,
                ),
              ),
        ),
      ),
    );
  }
}
