import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/tools/hide_behind_keyboard.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignInBloc>(),
      child: child,
    );
  }
}

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: KeyboardVisibilityBuilder(
        builder: (p0, isKeyboardVisible) => Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  const Expanded(child: LogoTitle()),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Войти в систему',
                          style: context.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(2.h),
                        Column(
                          children: [
                            TextInput(
                              label: 'E-mail',
                              hintText: 'Enter',
                              onChanged: (value) => context.read<SIB>().add(
                                    ChangeField(
                                      field: SignInField.email,
                                      value: value,
                                    ),
                                  ),
                            ),
                            Gap(2.h),
                            TextInput(
                              label: 'Password',
                              hintText: 'Enter',
                              onChanged: (value) => context.read<SIB>().add(
                                    ChangeField(
                                      field: SignInField.password,
                                      value: value,
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  isKeyboardVisible
                      ? const SizedBox()
                      : const Expanded(
                          flex: 3,
                          child: HideBehindKeyoard(
                            slideOffset: Offset(0, 3),
                            child: _BottomView(),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomView extends StatelessWidget {
  const _BottomView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColoredButton(
          title: 'Войти',
          onTap: () => context.router.replace(const NavRouter()),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h),
          child: Row(
            children: [
              Expanded(
                child: Divider(thickness: 1, endIndent: 4.w),
              ),
              Text(
                'ИЛИ',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Divider(thickness: 1, indent: 4.w),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Assets.icons.google.svg(),
            ),
            Gap(8.w),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Assets.icons.apple.svg(),
            )
          ],
        ),
        Gap(4.h),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Не зарегистрированы в системе?',
              style: context.textTheme.bodyMedium,
            ),
            Gap(1.h),
            InkWell(
              onTap: () => context.router.replace(const WelcomeRoute()),
              borderRadius: BorderRadius.circular(20),
              child: Text(
                'Создайте аккаунт',
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
