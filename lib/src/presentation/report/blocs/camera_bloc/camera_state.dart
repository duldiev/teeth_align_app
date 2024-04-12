part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  factory CameraState({
    @Default(false) bool isDeleteMode,
    @Default(null) XFile? file,
    @Default(LoadStatus.initial) LoadStatus status,
  }) = _CameraState;

  const CameraState._();
}
