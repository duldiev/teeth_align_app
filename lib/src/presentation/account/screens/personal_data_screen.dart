import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/doctor_bloc/doctor_bloc.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';
import 'package:teeth_align_app/src/shared/views/retry_again_view.dart';

@RoutePage()
class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({super.key});

  @override
  State<PersonalDataScreen> createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DoctorBloc>().add(const GetDoctorMe());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const MyAppBar(
            title: Text('Персональные данные'),
          ),
          body: state.when(
            initial: () => const SizedBox(),
            loading: () => const CircularLoader(),
            loaded: (data) {
              final doctor = data.doctor;

              void onChanged(DProfileField field, String value) {
                context.read<DoctorBloc>().add(
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
                        initialValue: doctor?.firstName,
                        onChanged: (value) => onChanged(
                          DProfileField.firstName,
                          value,
                        ),
                      ),
                      Gap(1.5.h),
                      TextInput(
                        label: 'Фамилия',
                        hintText: 'Фамилия',
                        initialValue: doctor?.lastName,
                        onChanged: (value) => onChanged(
                          DProfileField.lastName,
                          value,
                        ),
                      ),
                      Gap(1.5.h),
                      TextInput(
                        label: 'Клиника',
                        hintText: 'Клиника',
                        initialValue: doctor?.clinicName,
                        onChanged: (value) => onChanged(
                          DProfileField.clinicName,
                          value,
                        ),
                      ),
                      Gap(1.5.h),
                      TextInput(
                        label: 'Специальность',
                        hintText: 'Специальность',
                        initialValue: doctor?.speciality,
                        onChanged: (value) => onChanged(
                          DProfileField.speciality,
                          value,
                        ),
                      ),
                      Gap(1.5.h),
                      TextInput(
                        label: 'Город',
                        hintText: 'Город',
                        initialValue: doctor?.city,
                        onChanged: (value) => onChanged(
                          DProfileField.city,
                          value,
                        ),
                      ),
                      Gap(1.5.h),
                      TextInput(
                        label: 'Опыт работы',
                        hintText: 'Опыт работы',
                        initialValue: doctor?.workExperience?.toString(),
                        onChanged: (value) => onChanged(
                          DProfileField.workExperience,
                          value,
                        ),
                      ),
                      Gap(3.h),
                      ColoredButton(
                        title: 'Сохранить',
                        onTap: () => context.read<DoctorBloc>().add(
                              const SaveFields(),
                            ),
                      ),
                    ],
                  ),
                ),
              );
            },
            failed: () => RetryAgainView(
              onRetry: () => context.read<DoctorBloc>().add(
                    const GetDoctorMe(),
                  ),
            ),
          ),
        );
      },
    );
  }
}
