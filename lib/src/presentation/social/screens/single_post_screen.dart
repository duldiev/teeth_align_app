import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/date_extension.dart';
import 'package:teeth_align_app/src/domain/entity/comment_entity.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/social_bloc/social_bloc.dart';
import 'package:teeth_align_app/src/presentation/social/views/post_images_url_view.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/comment_icon.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/comment_tile.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/author_avatar.dart';
import 'package:teeth_align_app/src/presentation/social/widgets/like_icon.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class _Provider extends StatelessWidget {
  const _Provider({
    required this.postId,
    required this.child,
  });

  final int postId;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => getIt<SocialBloc>()..add(GetPost(postId))),
    ], child: child);
  }
}

@RoutePage()
class SinglePostScreen extends StatelessWidget {
  const SinglePostScreen({
    super.key,
    required this.postId,
  });

  final int postId;

  @override
  Widget build(BuildContext context) {
    return _Provider(
      postId: postId,
      child: BlocBuilder<SocialBloc, SocialState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const MyAppBar(
              title: Text('Post'),
            ),
            body: switch (state.status) {
              LoadStatus.initial => const SizedBox(),
              LoadStatus.loading => const SizedBox(),
              LoadStatus.success => _Content(state.post!, state.comments),
              LoadStatus.failed => const SizedBox(),
            },
            bottomNavigationBar: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 4.w,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.grey, width: 0.3),
                  ),
                ),
                child: _BottomCommentView(postId: postId),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BottomCommentView extends StatefulWidget {
  const _BottomCommentView({
    required this.postId,
  });

  final int postId;

  @override
  State<_BottomCommentView> createState() => _BottomCommentViewState();
}

class _BottomCommentViewState extends State<_BottomCommentView> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CommentIcon(),
        Expanded(
          child: TextInput(
            controller: _controller,
            hintText: 'Comment here',
            fillColor: AppColors.transparent,
            hideBorder: true,
            style: context.textTheme.bodyLarge,
            brightness: Brightness.light,
          ),
        ),
        InkWell(
          onTap: () {
            context.read<SocialBloc>().add(
                  CreateComment(widget.postId, _controller.text),
                );
            _controller.clear();
          },
          child: const Icon(
            Icons.arrow_upward_rounded,
            size: 30,
            color: AppColors.blue,
          ),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content(this.post, this.comments);

  final PostEntity post;
  final List<CommentEntity> comments;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 2.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              AuthorAvatar(account: post.author),
              Gap(3.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.author.fullName,
                    style: context.textTheme.titleMedium,
                  ),
                  Row(
                    children: [
                      Text(
                        post.type.name.toUpperCase(),
                        style: context.textTheme.titleSmall?.copyWith(
                          color: AppColors.blue,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        post.publishedDate.howLongAgo(),
                        style: context.textTheme.titleSmall?.copyWith(
                          color: AppColors.grey.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Gap(1.5.h),
          Linkify(
            text: post.text,
            overflow: TextOverflow.ellipsis,
            maxLines: 200,
          ),
          Gap(2.h),
          PostImagesUrlView(imageUrls: post.imageUrls),
          Row(
            children: [
              LikeIcon(post: post),
              Gap(5.w),
              const CommentIcon(),
              Gap(5.w),
              InkWell(
                child: Icon(
                  FontAwesomeIcons.shareFromSquare,
                  size: 26,
                  color: AppColors.white80op,
                ),
              ),
            ],
          ),
          Gap(1.h),
          Text('Нравится ${post.likes} людям'),
          Gap(2.h),
          Text(
            'Comments',
            style: context.textTheme.titleLarge,
          ),
          Gap(2.h),
          ...List.generate(
            comments.length,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: CommentTile(
                comment: CommentEntity(
                  author: comments[index].author,
                  text: comments[index].text,
                  createdDate: comments[index].createdDate,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
