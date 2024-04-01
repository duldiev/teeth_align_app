import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignInBloc>()..add(const CheckAuthorized()),
      child: child,
    );
  }
}

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state.status == LoadStatus.success) {
            context.router.replace(const NavRouter());
          } else {
            context.router.replace(const WelcomeRoute());
          }
        },
        listenWhen: (prev, curr) => prev.status == LoadStatus.loading,
        child: const CircularLoader(),
      ),
    );
  }
}
