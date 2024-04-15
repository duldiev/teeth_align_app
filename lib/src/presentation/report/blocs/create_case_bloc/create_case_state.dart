part of 'create_case_bloc.dart';

@freezed
class CreateCaseState with _$CreateCaseState {
  factory CreateCaseState({
    @Default({}) Map<CaseField, XFile?> caseImages,
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(LoadStatus.initial) LoadStatus uploadStatus,
  }) = _CreateCaseState;

  const CreateCaseState._();
}
