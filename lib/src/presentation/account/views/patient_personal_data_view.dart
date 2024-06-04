import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/delete_account_button.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';
import 'package:teeth_align_app/src/shared/views/retry_again_view.dart';

class PatientPersonalDataView extends StatefulWidget {
  const PatientPersonalDataView({super.key});

  @override
  State<PatientPersonalDataView> createState() =>
      _PatientPersonalDataViewState();
}

class _PatientPersonalDataViewState extends State<PatientPersonalDataView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PatientBloc>().add(const GetPatientMe());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientBloc, PatientState>(
      builder: (context, state) => state.when(
        initial: () => const SizedBox(),
        loading: () => const CircularLoader(),
        loaded: (data) {
          final patient = data.patient;

          void onChanged(PProfileField field, String value) {
            context.read<PatientBloc>().add(
                  ChangeField(field: field, value: value),
                );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: SafeArea(
              child: Column(
                children: [
                  TextInput(
                    label: 'Имя',
                    hintText: 'Имя',
                    initialValue: patient?.firstName,
                    onChanged: (value) => onChanged(
                      PProfileField.firstName,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Фамилия',
                    hintText: 'Фамилия',
                    initialValue: patient?.lastName,
                    onChanged: (value) => onChanged(
                      PProfileField.lastName,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Почта',
                    hintText: 'Почта',
                    initialValue: patient?.email,
                    onChanged: (value) => onChanged(
                      PProfileField.email,
                      value,
                    ),
                  ),
                  Gap(3.h),
                  ColoredButton(
                    title: 'Сохранить',
                    onTap: () => context.read<PatientBloc>().add(
                          const SaveFields(),
                        ),
                  ),
                  const DeleteAccountBtton(),
                ],
              ),
            ),
          );
        },
        failed: () => RetryAgainView(
          onRetry: () => context.read<PatientBloc>().add(
                const GetPatientMe(),
              ),
        ),
      ),
    );
  }
}
