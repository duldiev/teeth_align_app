import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/base/globals.dart';
import 'package:teeth_align_app/src/presentation/report/blocs/camera_bloc/camera_bloc.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

@RoutePage()
class CameraScreen extends StatefulWidget {
  const CameraScreen({
    super.key,
    required this.callbackOnSend,
  });

  final VoidCallback callbackOnSend;

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
                      onTap: () => context.router.pop(),
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
                            'Back',
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
                      child: _ButtonsView(
                        controller: controller,
                        state: state,
                        callbackOnSend: widget.callbackOnSend,
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

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    required this.controller,
    required this.state,
    required this.callbackOnSend,
  });

  final CameraController controller;
  final CameraState state;
  final VoidCallback callbackOnSend;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: SizedBox()),
          Flexible(
            child: GestureDetector(
              onTap: () => context.read<CameraBloc>().add(
                    TakePicture(controller: controller),
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
                    if (state.status == LoadStatus.loading) ...[
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
          if (state.status != LoadStatus.loading) ...[
            Expanded(
              child: InkWell(
                onTap: () {
                  callbackOnSend();
                  context.router.maybePop();
                },
                child: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: AppColors.white,
                  size: 50,
                ),
              ),
            ),
          ] else ...[
            const Expanded(child: SizedBox()),
          ],
        ],
      ),
    );
  }
}
