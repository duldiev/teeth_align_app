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

      emit(state.copyWith(
        status: LoadStatus.success,
        file: file,
      ));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failed));
    }
  }

  void onRemovePicture(
    RemovePicture event,
    Emitter<CameraState> emit,
  ) {
    emit(state.copyWith(file: null, isDeleteMode: false));
  }
}
