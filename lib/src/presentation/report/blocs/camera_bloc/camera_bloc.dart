import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';

part 'camera_event.dart';
part 'camera_state.dart';
part 'camera_bloc.freezed.dart';

@injectable
class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(CameraState()) {
    on<ToggleDeleteMode>(onToggleDeleteMode);
    on<TakePicture>(onTakePicture);
    on<RemovePicture>(onRemovePicture);
  }

  void onToggleDeleteMode(
    ToggleDeleteMode event,
    Emitter<CameraState> emit,
  ) =>
      emit(state.copyWith(isDeleteMode: !state.isDeleteMode));

  Future<void> onTakePicture(
    TakePicture event,
    Emitter<CameraState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    try {
      final file = await event.controller.takePicture();
      final uintFile = await file.readAsBytes();

      emit(state.copyWith(
        status: LoadStatus.success,
        files: [...state.files, file],
        uintFiles: [...state.uintFiles, uintFile],
      ));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failed));
    }
  }

  void onRemovePicture(
    RemovePicture event,
    Emitter<CameraState> emit,
  ) {
    var files = [...state.files];
    var uintFiles = [...state.uintFiles];

    files.removeAt(event.index);
    uintFiles.removeAt(event.index);

    emit(state.copyWith(
      files: files,
      uintFiles: uintFiles,
      isDeleteMode: false,
    ));
  }
}
