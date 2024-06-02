import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/delete_account_button.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/mentor_bloc/mentor_bloc.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';
import 'package:teeth_align_app/src/shared/views/retry_again_view.dart';

class MentorPersonalDataView extends StatefulWidget {
  const MentorPersonalDataView({super.key});

  @override
  State<MentorPersonalDataView> createState() => _MentorPersonalDataViewState();
}

class _MentorPersonalDataViewState extends State<MentorPersonalDataView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MentorBloc>().add(const GetMentorMe());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorBloc, MentorState>(
      builder: (context, state) => state.when(
        initial: () => const SizedBox(),
        loading: () => const CircularLoader(),
        loaded: (data) {
          final mentor = data.mentor;

          void onChanged(MProfileField field, String value) {
            context.read<MentorBloc>().add(
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
                    initialValue: mentor?.firstName,
                    onChanged: (value) => onChanged(
                      MProfileField.firstName,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Фамилия',
                    hintText: 'Фамилия',
                    initialValue: mentor?.lastName,
                    onChanged: (value) => onChanged(
                      MProfileField.lastName,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Клиника',
                    hintText: 'Клиника',
                    initialValue: mentor?.clinicName,
                    onChanged: (value) => onChanged(
                      MProfileField.clinicName,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Специальность',
                    hintText: 'Специальность',
                    initialValue: mentor?.speciality,
                    onChanged: (value) => onChanged(
                      MProfileField.speciality,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Город',
                    hintText: 'Город',
                    initialValue: mentor?.city,
                    onChanged: (value) => onChanged(
                      MProfileField.city,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Опыт работы',
                    hintText: 'Опыт работы',
                    initialValue: mentor?.workExperience?.toString(),
                    onChanged: (value) => onChanged(
                      MProfileField.workExperience,
                      value,
                    ),
                  ),
                  Gap(3.h),
                  ColoredButton(
                    title: 'Сохранить',
                    onTap: () => context.read<MentorBloc>().add(
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
          onRetry: () => context.read<MentorBloc>().add(
                const GetMentorMe(),
              ),
        ),
      ),
    );
  }
}
