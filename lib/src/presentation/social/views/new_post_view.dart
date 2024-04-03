import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/data/body/create_post_body.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/social_bloc/social_bloc.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

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

class NewPostView extends StatelessWidget {
  const NewPostView({
    super.key,
    required this.onCreatedCallback,
  });

  final VoidCallback onCreatedCallback;

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocListener<SocialBloc, SocialState>(
        listener: (context, state) {
          if (state.createCommentStatus == LoadStatus.success) {
            onCreatedCallback();
          }
        },
        listenWhen: (prev, curr) {
          return curr.createCommentStatus == LoadStatus.success;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 1.5.h),
              child: Text(
                'New post',
                style: context.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextInput(
              hintText: 'Here goes your text',
              fillColor: AppColors.white.withOpacity(0.03),
              hideBorder: true,
              maxLines: 10,
              brightness: Brightness.light,
              onChanged: (value) => context.read<SocialBloc>().add(
                    ChangeCreatePostbody(CPBF.text, value),
                  ),
            ),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => context.read<SocialBloc>().add(
                          const ChangeCreatePostbody(CPBF.images),
                        ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.image_outlined,
                          size: 40,
                          color: AppColors.upload,
                        ),
                        const Gap(6),
                        Text(
                          'Upload\nimage',
                          style: context.textTheme.titleSmall?.copyWith(
                            height: 1,
                            color: AppColors.upload,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => context.read<SocialBloc>().add(
                          const CreatePost(),
                        ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.w,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.arrowRight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
