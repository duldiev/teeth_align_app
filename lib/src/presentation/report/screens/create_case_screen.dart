import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/presentation/report/blocs/create_case_bloc/create_case_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';
import 'package:teeth_align_app/src/presentation/report/widgets/case_input.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreateCaseBloc>(),
      child: child,
    );
  }
}

@RoutePage()
class CreateCaseScreen extends StatelessWidget {
  const CreateCaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocBuilder<CreateCaseBloc, CreateCaseState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const MyAppBar(
              title: Text('Create a case'),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: SafeArea(
                child: Column(
                  children: [
                    ...List.generate(
                      CaseField.values.length,
                      (index) {
                        final field = CaseField.values[index];
                        return CaseInput(
                          field: field,
                          imageName: state.caseImages[field]?.name,
                        );
                      },
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
