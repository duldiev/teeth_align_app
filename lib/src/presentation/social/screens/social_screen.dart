import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/services/modal_bottom_sheet.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/leaderboard_bloc/leaderboard_bloc.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/social_bloc/social_bloc.dart';
import 'package:teeth_align_app/src/presentation/social/views/new_post_view.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/post_tile.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => getIt<SocialBloc>()..add(const GetPosts())),
    ], child: child);
  }
}

@RoutePage()
class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocBuilder<SocialBloc, SocialState>(
        builder: (context, state) {
          return Scaffold(
            appBar: MyAppBar(
              title: const Text('Сообщество'),
              actions: [
                InkWell(
                  onTap: () {
                    context.read<LeaderboardBloc>().add(const GetList());
                    context.router.push(const LeaderboardRoute());
                  },
                  child: const Icon(
                    FontAwesomeIcons.trophy,
                    size: 20,
                  ),
                ),
                Gap(6.w),
                InkWell(
                  onTap: () async {
                    PostEntity? createdPost = await MBS.show<PostEntity>(
                      context,
                      const NewPostView(),
                      0.9,
                    );
                    if (!context.mounted) return;
                    if (createdPost != null) {
                      context.read<SocialBloc>().add(UpdatePosts(createdPost));
                    }
                  },
                  child: const Icon(
                    FontAwesomeIcons.notesMedical,
                    size: 22,
                  ),
                ),
                Gap(6.w),
                InkWell(
                  onTap: () => context.router.push(ChatListRoute()),
                  child: const Icon(
                    FontAwesomeIcons.inbox,
                    size: 22,
                  ),
                ),
                Gap(4.w),
              ],
            ),
            body: SafeArea(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 2.h,
                ),
                itemBuilder: (context, index) => PostTile(
                  post: state.posts[index],
                  isLiking: state.likeStatus == LoadStatus.loading,
                ),
                separatorBuilder: (context, index) => Gap(2.h),
                itemCount: state.posts.length,
              ),
            ),
          );
        },
      ),
    );
  }
}
