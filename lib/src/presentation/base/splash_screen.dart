import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SignInBloc>().add(const CheckAuthorized());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state.status == LoadStatus.success) {
            if (!state.isAlignerSettingsSet) {
              context.router.replace(const AlignerSettingsRoute());
            } else {
              context.router.replace(const NavRouter());
            }
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
