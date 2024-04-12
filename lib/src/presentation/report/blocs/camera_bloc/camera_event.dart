part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  const factory CameraEvent.toggleDeleteMode(bool value) = ToggleDeleteMode;

  const factory CameraEvent.takePicture({
    required CameraController controller,
  }) = TakePicture;

  const factory CameraEvent.removePicture(int index) = RemovePicture;
}
