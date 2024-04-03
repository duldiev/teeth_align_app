import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/extensions/string_extension.dart';
import 'package:teeth_align_app/src/data/body/create_post_body.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/social_bloc/social_bloc.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => getIt<SocialBloc>()),
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
      child: BlocConsumer<SocialBloc, SocialState>(
        listener: (context, state) {
          if (state.createPostStatus == LoadStatus.success) {
            onCreatedCallback();
            context.router.maybePop();
          }
        },
        builder: (context, state) {
          if (state.createPostStatus == LoadStatus.loading) {
            return const CircularLoader();
          }
          return Column(
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
                      onTap: () async {
                        PostType? type = await showDialog<PostType>(
                          context: context,
                          builder: (context) => const PostTypeSelectDialog(),
                        );
                        if (!context.mounted) return;
                        if (type != null) {
                          context.read<SocialBloc>()
                            ..add(ChangeCreatePostbody(CPBF.type, type))
                            ..add(const CreatePost());
                        }
                      },
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
              Gap(3.h),
              if (state.createPostBody?.images?.isNotEmpty == true) ...[
                Padding(
                  padding: EdgeInsets.only(left: 4.w, bottom: 1.5.h),
                  child: Text(
                    'Uploaded images:',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  children: List.generate(
                    state.createPostBody?.images?.length ?? 0,
                    (index) {
                      if (state.createPostBody?.images?[index] == null) {
                        return const SizedBox();
                      }
                      return NewPostImageTile(
                        imageFile: state.createPostBody!.images![index]!,
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void onCreate(BuildContext context) => context.read<SocialBloc>().add(
        const CreatePost(),
      );
}

class NewPostImageTile extends StatelessWidget {
  const NewPostImageTile({
    super.key,
    required this.imageFile,
  });

  final XFile imageFile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        context: context,
        barrierColor: AppColors.black.withOpacity(0.8),
        builder: (_) => Dialog(
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Preview',
                    style: context.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CloseButton(
                    style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(30),
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.file(
                  File(imageFile.path),
                  fit: BoxFit.cover,
                ),
              ),
              Gap(3.h),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    context.read<SocialBloc>().add(RemoveImage(imageFile));
                    context.router.maybePop();
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: AppColors.danger,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      FontAwesomeIcons.trash,
                      size: 26,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      child: Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(right: 4.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.hardEdge,
        child: Image.file(
          File(imageFile.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PostTypeSelectDialog extends StatelessWidget {
  const PostTypeSelectDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.background,
          border: Border.all(
            color: AppColors.white80op,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: PostType.values
              .map((e) => PostTypeSelectTile(
                    type: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class PostTypeSelectTile extends StatelessWidget {
  const PostTypeSelectTile({
    super.key,
    required this.type,
  });

  final PostType type;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.maybePop(type),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              type.name.capitalize(),
              style: context.textTheme.titleLarge?.copyWith(
                color: AppColors.primary,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 24,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
