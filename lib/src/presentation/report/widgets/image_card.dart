import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/blocs/camera_bloc/camera_bloc.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.index,
    required this.file,
  });

  final int index;
  final XFile file;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => !state.isDeleteMode
              ? context.read<CameraBloc>().add(const ToggleDeleteMode(true))
              : context.read<CameraBloc>().add(RemovePicture(index)),
          onDoubleTap: () => context.read<CameraBloc>().add(
                const ToggleDeleteMode(false),
              ),
          child: Container(
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Image.file(
                    File(file.path),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Visibility(
                    visible: state.isDeleteMode,
                    child: Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      color: AppColors.black.withOpacity(0.6),
                      child: const Icon(
                        Icons.close,
                        size: 24,
                        color: AppColors.danger,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
