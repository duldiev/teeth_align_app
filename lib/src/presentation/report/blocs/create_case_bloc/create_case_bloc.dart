import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/data/body/doctor_case_body.dart';
import 'package:teeth_align_app/src/domain/repository/i_doctor_repository.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';
import 'package:teeth_align_app/src/presentation/report/core/keys.dart';

part 'create_case_event.dart';
part 'create_case_state.dart';
part 'create_case_bloc.freezed.dart';

@injectable
class CreateCaseBloc extends Bloc<CreateCaseEvent, CreateCaseState> {
  final ImagePicker imagePicker;
  final IDoctorRepository repository;

  CreateCaseBloc({
    required this.imagePicker,
    required this.repository,
  }) : super(CreateCaseState()) {
    on<UploadImage>(onUploadImage);
    on<CaptureImage>(onCaptureImage);
    on<DeleteImage>(onDeleteImage);
    on<ChangeComment>(onChangeComment);
    on<Create>(onCreate);
  }

  DoctorCaseBody requestBody = DoctorCaseBody.empty();

  Future<void> onUploadImage(
    UploadImage event,
    Emitter<CreateCaseState> emit,
  ) async {
    emit(state.copyWith(uploadStatus: LoadStatus.loading));

    final image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 1024,
      maxWidth: 1024,
      imageQuality: 80,
    );

    if (image != null) {
      requestBody = requestBody.changeField(
        event.field,
        await image.readAsBytes(),
      );
      emit(state.copyWith(
        uploadStatus: LoadStatus.success,
        caseImages: _addImage(state.caseImages, event.field, image),
      ));
    } else {
      emit(state.copyWith(uploadStatus: LoadStatus.failed));
    }
  }

  Future<void> onCaptureImage(
    CaptureImage event,
    Emitter<CreateCaseState> emit,
  ) async {
    emit(state.copyWith(uploadStatus: LoadStatus.loading));

    final image = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 1024,
      maxWidth: 1024,
      imageQuality: 80,
    );

    if (image != null) {
      requestBody = requestBody.changeField(
        event.field,
        await image.readAsBytes(),
      );
      emit(state.copyWith(
        uploadStatus: LoadStatus.success,
        caseImages: _addImage(state.caseImages, event.field, image),
      ));
    } else {
      emit(state.copyWith(uploadStatus: LoadStatus.failed));
    }
  }

  Map<CaseField, XFile?> _addImage(
    Map<CaseField, XFile?> prev,
    CaseField field,
    XFile image,
  ) {
    Map<CaseField, XFile?> caseImages = {}..addAll(state.caseImages);
    caseImages.remove(field);
    caseImages.addAll({field: image});
    return caseImages;
  }

  Future<void> onDeleteImage(
    DeleteImage event,
    Emitter<CreateCaseState> emit,
  ) async {
    log('message');
    Map<CaseField, XFile?> caseImages = {}..addAll(state.caseImages);
    caseImages.remove(event.field);
    emit(state.copyWith(caseImages: caseImages));
  }

  void onChangeComment(
    ChangeComment event,
    Emitter<CreateCaseState> emit,
  ) =>
      requestBody = requestBody.copyWith(comment: event.value);

  Future<void> onCreate(
    Create event,
    Emitter<CreateCaseState> emit,
  ) async {
    if (caseForm.currentState?.validate() != true) return;

    emit(state.copyWith(status: LoadStatus.loading));

    (await repository.createCase(event.patientId, requestBody)).fold(
      (l) => emit(state.copyWith(status: LoadStatus.failed)),
      (r) => emit(state.copyWith(status: LoadStatus.success)),
    );
  }
}
