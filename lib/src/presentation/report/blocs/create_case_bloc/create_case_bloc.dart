import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';

part 'create_case_event.dart';
part 'create_case_state.dart';
part 'create_case_bloc.freezed.dart';

@injectable
class CreateCaseBloc extends Bloc<CreateCaseEvent, CreateCaseState> {
  final ImagePicker imagePicker;

  CreateCaseBloc({required this.imagePicker}) : super(CreateCaseState()) {
    on<UploadImage>(onUploadImage);
    on<CaptureImage>(onCaptureImage);
    on<DeleteImage>(onDeleteImage);
  }

  Future<void> onUploadImage(
    UploadImage event,
    Emitter<CreateCaseState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    final image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 1024,
      maxWidth: 1024,
      imageQuality: 80,
    );

    if (image != null) {
      emit(state.copyWith(
        status: LoadStatus.success,
        caseImages: _addImage(state.caseImages, event.field, image),
      ));
    } else {
      emit(state.copyWith(status: LoadStatus.failed));
    }
  }

  Future<void> onCaptureImage(
    CaptureImage event,
    Emitter<CreateCaseState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    final image = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 1024,
      maxWidth: 1024,
      imageQuality: 80,
    );

    if (image != null) {
      emit(state.copyWith(
        status: LoadStatus.success,
        caseImages: _addImage(state.caseImages, event.field, image),
      ));
    } else {
      emit(state.copyWith(status: LoadStatus.failed));
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
}
