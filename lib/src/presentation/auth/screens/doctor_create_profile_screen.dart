import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/helpers/validators.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/tools/hide_behind_keyboard.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignUpBloc>(),
      child: child,
    );
  }
}

@RoutePage()
class DoctorCreateProfileScreen extends StatelessWidget {
  const DoctorCreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.status == LoadStatus.success) {
            context.router
              ..popUntilRoot()
              ..replace(const SplashRoute());
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: const MyAppBar(
              title: Text('Создать профиль'),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 2.h,
              ),
              child: Column(
                children: [
                  TextInput(
                    label: 'Имя',
                    hintText: 'Введите имя',
                    validator: Validators.empty,
                    onChanged: (value) => context.read<SUB>().add(
                          ChangeDProfileField(
                            field: DProfileField.firstName,
                            value: value,
                          ),
                        ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Фамилия',
                    hintText: 'Введите фамилия',
                    validator: Validators.empty,
                    onChanged: (value) => context.read<SUB>().add(
                          ChangeDProfileField(
                            field: DProfileField.lastName,
                            value: value,
                          ),
                        ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Название клиники',
                    hintText: 'Введите название клиники',
                    validator: Validators.empty,
                    onChanged: (value) => context.read<SUB>().add(
                          ChangeDProfileField(
                            field: DProfileField.clinicName,
                            value: value,
                          ),
                        ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Специальность',
                    hintText: 'Введите специальность',
                    validator: Validators.empty,
                    onChanged: (value) => context.read<SUB>().add(
                          ChangeDProfileField(
                            field: DProfileField.speciality,
                            value: value,
                          ),
                        ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Образование',
                    hintText: 'Введите образование',
                    validator: Validators.empty,
                    onChanged: (value) => context.read<SUB>().add(
                          ChangeDProfileField(
                            field: DProfileField.education,
                            value: value,
                          ),
                        ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Опыт работы',
                    hintText: 'Укажите опыт работы',
                    validator: Validators.empty,
                    onChanged: (value) => context.read<SUB>().add(
                          ChangeDProfileField(
                            field: DProfileField.workExperience,
                            value: value,
                          ),
                        ),
                  ),
                  Gap(3.h),
                  HideBehindKeyoard(
                    slideOffset: const Offset(0, 3),
                    child: ColoredButton(
                      onTap: state.status != LoadStatus.loading
                          ? () => context.read<SignUpBloc>().add(
                                const CreateDoctor(),
                              )
                          : null,
                      title: 'Создать',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
