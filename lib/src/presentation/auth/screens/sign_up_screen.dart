import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/auth/views/barcode_field_view.dart';
import 'package:teeth_align_app/src/presentation/auth/views/code_field_view.dart';
import 'package:teeth_align_app/src/presentation/auth/views/email_password_field_view.dart';
import 'package:teeth_align_app/src/presentation/auth/views/finish_view.dart';
import 'package:teeth_align_app/src/presentation/auth/views/role_field_view.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

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
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          final stepText = switch (state.currentFieldsView) {
            SUFV.role => 'Выберите роль',
            SUFV.emailPassword => 'Зарегистрироваться в системе',
            SUFV.code => 'Введите код валидаций',
            SUFV.patientId => 'Введите штрихкод с продукта',
            SUFV.finish => '',
          };
          final stepView = switch (state.currentFieldsView) {
            SUFV.role => RoleFieldView(state: state),
            SUFV.emailPassword => const EmailPasswordFieldView(),
            SUFV.code => const CodeFieldView(),
            SUFV.patientId => const BarcodeFieldView(),
            SUFV.finish => const FinishView(),
          };
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ).copyWith(bottom: 2.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: const LogoTitle(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h, bottom: 4.h),
                      child: Row(
                        children: [
                          _StepCircle(
                            step: 1,
                            isActive: state.currentStepNumber >= 1,
                          ),
                          Expanded(
                            child: _StepLine(
                              isActive: state.currentStepNumber >= 2,
                            ),
                          ),
                          _StepCircle(
                            step: 2,
                            isActive: state.currentStepNumber >= 2,
                          ),
                          Expanded(
                            child: _StepLine(
                              isActive: state.currentStepNumber >= 3,
                            ),
                          ),
                          _StepCircle(
                            step: 3,
                            isActive: state.currentStepNumber >= 3,
                          ),
                          Expanded(
                            child: _StepLine(
                              isActive: state.currentStepNumber >= 4,
                            ),
                          ),
                          _StepCircle(
                            step: 4,
                            isActive: state.currentStepNumber >= 4,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      stepText,
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: stepView,
                      ),
                    ),
                    ColoredButton(
                      onTap: state.status != LoadStatus.loading
                          ? () => context.read<SignUpBloc>().add(
                                const NextField(),
                              )
                          : null,
                      title: 'Зарегистрироваться',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _StepLine extends StatelessWidget {
  const _StepLine({
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      color: isActive ? AppColors.primary : AppColors.white,
    );
  }
}

class _StepCircle extends StatelessWidget {
  const _StepCircle({
    required this.step,
    required this.isActive,
  });

  final int step;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.white,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$step',
        style: context.textTheme.titleLarge?.copyWith(
          color: AppColors.dark,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
