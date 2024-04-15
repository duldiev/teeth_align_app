part of 'create_case_bloc.dart';

@freezed
class CreateCaseEvent with _$CreateCaseEvent {
  const factory CreateCaseEvent.uploadImage(CaseField field) = UploadImage;

  const factory CreateCaseEvent.captureImage(CaseField field) = CaptureImage;

  const factory CreateCaseEvent.deleteImage(CaseField field) = DeleteImage;
}
