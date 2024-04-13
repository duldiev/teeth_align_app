import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/data/body/patient_case_body.dart';
import 'package:teeth_align_app/src/presentation/base/globals.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/blocs/camera_bloc/camera_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/widgets/image_card.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

@RoutePage()
class CameraScreen extends StatefulWidget {
  const CameraScreen({
    super.key,
  });

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen>
    with WidgetsBindingObserver {
  late CameraController controller;
  late Future<void> _initializeControllerFuture;

  Widget createProviders(child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<CameraBloc>()),
        ],
        child: child,
      );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    controller = CameraController(
      cameras[0],
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    _initializeControllerFuture = controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            break;
          default:
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    controller.dispose();
    super.dispose();
  }

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    controller.setDescription(cameraDescription);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return createProviders(FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return BlocConsumer<CameraBloc, CameraState>(
            listener: (context, state) {},
            listenWhen: (prev, curr) => prev.status != curr.status,
            builder: (context, state) {
              return CameraPreview(
                controller,
                child: Scaffold(
                  backgroundColor: AppColors.transparent,
                  appBar: AppBar(
                    backgroundColor: AppColors.transparent,
                    scrolledUnderElevation: 0,
                    elevation: 0,
                    leadingWidth: double.maxFinite,
                    leading: InkWell(
                      onTap: () => context.router.maybePop(),
                      customBorder: const CircleBorder(),
                      child: Row(
                        children: [
                          Gap(4.w),
                          const Icon(
                            FontAwesomeIcons.arrowLeft,
                            color: AppColors.white,
                            size: 18,
                          ),
                          Gap(2.w),
                          Text(
                            'Назад',
                            style: context.textTheme.titleSmall?.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  body: SafeArea(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Column(
                              children: [
                                Text(
                                  'Сфотографируйте зубы',
                                  style:
                                      context.textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  switch (state.files.length) {
                                    0 => 'Слева',
                                    1 => 'Центр',
                                    2 => 'Справа',
                                    int() => '',
                                  },
                                  style: context.textTheme.headlineMedium
                                      ?.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 100,
                                margin: EdgeInsets.only(bottom: 3.h),
                                alignment: Alignment.bottomCenter,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                  ),
                                  itemBuilder: (context, index) => ImageCard(
                                    index: index,
                                    file: state.files[index],
                                  ),
                                  separatorBuilder: (context, index) =>
                                      Gap(4.w),
                                  itemCount: state.files.length,
                                ),
                              ),
                              _ButtonsView(
                                controller: controller,
                                state: state,
                                onSwitch: onNewCameraSelected,
                              ),
                              Gap(4.h),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return const CircularLoader();
        }
      },
    ));
  }
}

class _ButtonsView extends StatefulWidget {
  const _ButtonsView({
    required this.controller,
    required this.state,
    required this.onSwitch,
  });

  final CameraController controller;
  final CameraState state;
  final void Function(CameraDescription description) onSwitch;

  @override
  State<_ButtonsView> createState() => _ButtonsViewState();
}

class _ButtonsViewState extends State<_ButtonsView> {
  int cameraNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (widget.state.files.length < 3) ...[
            Expanded(
              child: InkWell(
                onTap: () {
                  widget.onSwitch(
                    cameraNumber == 0 ? cameras[1] : cameras[0],
                  );
                  setState(
                    () => cameraNumber = cameraNumber == 0 ? 1 : 0,
                  );
                },
                child: const Icon(
                  Icons.cameraswitch_rounded,
                  color: AppColors.white,
                  size: 35,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => context.read<CameraBloc>().add(
                      TakePicture(controller: widget.controller),
                    ),
                child: Container(
                  margin: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (widget.state.status == LoadStatus.loading) ...[
                        Transform.scale(
                          scale: 1.8,
                          child: CircularLoader(
                            color: AppColors.black.withOpacity(
                              0.6,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.circle,
                          color: AppColors.white,
                          size: 70,
                        ),
                      ] else ...[
                        Icon(
                          Icons.camera,
                          color: AppColors.black.withOpacity(
                            0.6,
                          ),
                          size: 70,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
          ] else ...[
            Expanded(
              child: InkWell(
                onTap: () async {
                  final result = await showDialog(
                    context: context,
                    builder: (context) => _CommentDialog(
                      widget.state.uintFiles,
                    ),
                  );
                  if (!context.mounted) return;
                  if (result == true) {
                    context.router.maybePop();
                  }
                },
                child: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: AppColors.blue,
                  size: 60,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _CommentDialog extends StatefulWidget {
  const _CommentDialog(this.images);

  final List<Uint8List> images;

  @override
  State<_CommentDialog> createState() => _CommentDialogState();
}

class _CommentDialogState extends State<_CommentDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 1.5.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.background,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Коммент',
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(2.h),
            TextInput(
              controller: _controller,
              hintText: 'Оставьте комментарии',
            ),
            Gap(2.h),
            ColoredButton(
              onTap: () {
                context.read<PatientBloc>().add(PostCase(
                      PatientCaseBody(
                        comment: _controller.text,
                        front: widget.images[0],
                        right: widget.images[1],
                        left: widget.images[2],
                      ),
                    ));
                context.router.maybePop(true);
              },
              title: 'Отправить',
              padding: EdgeInsets.symmetric(vertical: 0.8.h),
            ),
          ],
        ),
      ),
    );
  }
}
