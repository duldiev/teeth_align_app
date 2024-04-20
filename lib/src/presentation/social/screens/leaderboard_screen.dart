import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_short_entity.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/leaderboard_bloc/leaderboard_bloc.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

@RoutePage()
class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardBloc, LeaderboardState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const MyAppBar(
            title: Text('Leaderboard'),
          ),
          body: state.when(
            initial: () => const SizedBox(),
            loading: () => const CircularLoader(),
            loaded: (data) => Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned.fill(
                  top: 22.h,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.post,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      itemBuilder: (context, index) => Gap(2.h),
                      separatorBuilder: (context, index) => LeaderTile(
                        doctor: data.leaders[index + 3],
                      ),
                      itemCount: data.leaders.length - 3,
                    ),
                  ),
                ),
                Positioned.fromRect(
                  rect: Rect.fromLTWH(0, 8.h, 100.w, 80),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: TopLeader(doctor: data.leaders[0]),
                        ),
                        Expanded(
                          child: Transform.scale(
                            scale: 1.4,
                            child: TopLeader(doctor: data.leaders[1]),
                          ),
                        ),
                        Expanded(
                          child: TopLeader(doctor: data.leaders[2]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            failed: () => const SizedBox(),
          ),
        );
      },
    );
  }
}

class TopLeader extends StatelessWidget {
  const TopLeader({
    super.key,
    required this.doctor,
  });

  final DoctorShortEntity doctor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.hardEdge,
            child: const Icon(
              FontAwesomeIcons.userDoctor,
              color: AppColors.dark,
              size: 60,
            ),
          ),
        ),
        Container(
          height: 16,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            '4.5 pt',
            style: context.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.black,
              letterSpacing: 0,
              fontSize: 10,
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Transform.translate(
            offset: const Offset(0, -28),
            child: Text(
              '${doctor.firstName}\n${doctor.lastName}',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class LeaderTile extends StatelessWidget {
  const LeaderTile({
    super.key,
    required this.doctor,
  });

  final DoctorShortEntity doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
      ).copyWith(bottom: 15, top: 5),
      decoration: BoxDecoration(
        color: AppColors.post.withAlpha(250),
        borderRadius: BorderRadius.circular(10),
        border: Border(
          bottom: BorderSide(
            color: AppColors.white.withOpacity(0.4),
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            '${doctor.place}',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(3.w),
          Expanded(
            child: Text(
              doctor.fullName,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            '4.5 pt',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
