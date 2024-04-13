import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/widgets/case_tile.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/refreshers/pull_refresher.dart';

@RoutePage()
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Отчеты'),
      ),
      body: BlocBuilder<PatientBloc, PatientState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const SizedBox(),
            loaded: (data) => PullRefresher(
              onRefresh: () async => context.read<PatientBloc>().add(
                    GetCases(appData.userId),
                  ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                    data.cases.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: CaseTile(
                        caseObject: data.cases[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            failed: () => const SizedBox(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const CameraRoute());
        },
        child: const Icon(
          FontAwesomeIcons.camera,
          size: 20,
          color: AppColors.white,
        ),
      ),
    );
  }
}
