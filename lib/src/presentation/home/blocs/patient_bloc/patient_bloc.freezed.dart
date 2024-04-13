// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPatient,
    required TResult Function(int? patientId) getCases,
    required TResult Function(PatientCaseBody body) postCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPatient,
    TResult? Function(int? patientId)? getCases,
    TResult? Function(PatientCaseBody body)? postCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPatient,
    TResult Function(int? patientId)? getCases,
    TResult Function(PatientCaseBody body)? postCase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatient value) getPatient,
    required TResult Function(GetCases value) getCases,
    required TResult Function(PostCase value) postCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatient value)? getPatient,
    TResult? Function(GetCases value)? getCases,
    TResult? Function(PostCase value)? postCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatient value)? getPatient,
    TResult Function(GetCases value)? getCases,
    TResult Function(PostCase value)? postCase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientEventCopyWith<$Res> {
  factory $PatientEventCopyWith(
          PatientEvent value, $Res Function(PatientEvent) then) =
      _$PatientEventCopyWithImpl<$Res, PatientEvent>;
}

/// @nodoc
class _$PatientEventCopyWithImpl<$Res, $Val extends PatientEvent>
    implements $PatientEventCopyWith<$Res> {
  _$PatientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPatientImplCopyWith<$Res> {
  factory _$$GetPatientImplCopyWith(
          _$GetPatientImpl value, $Res Function(_$GetPatientImpl) then) =
      __$$GetPatientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetPatientImplCopyWithImpl<$Res>
    extends _$PatientEventCopyWithImpl<$Res, _$GetPatientImpl>
    implements _$$GetPatientImplCopyWith<$Res> {
  __$$GetPatientImplCopyWithImpl(
      _$GetPatientImpl _value, $Res Function(_$GetPatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPatientImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPatientImpl implements GetPatient {
  const _$GetPatientImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PatientEvent.getPatient(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPatientImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPatientImplCopyWith<_$GetPatientImpl> get copyWith =>
      __$$GetPatientImplCopyWithImpl<_$GetPatientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPatient,
    required TResult Function(int? patientId) getCases,
    required TResult Function(PatientCaseBody body) postCase,
  }) {
    return getPatient(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPatient,
    TResult? Function(int? patientId)? getCases,
    TResult? Function(PatientCaseBody body)? postCase,
  }) {
    return getPatient?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPatient,
    TResult Function(int? patientId)? getCases,
    TResult Function(PatientCaseBody body)? postCase,
    required TResult orElse(),
  }) {
    if (getPatient != null) {
      return getPatient(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatient value) getPatient,
    required TResult Function(GetCases value) getCases,
    required TResult Function(PostCase value) postCase,
  }) {
    return getPatient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatient value)? getPatient,
    TResult? Function(GetCases value)? getCases,
    TResult? Function(PostCase value)? postCase,
  }) {
    return getPatient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatient value)? getPatient,
    TResult Function(GetCases value)? getCases,
    TResult Function(PostCase value)? postCase,
    required TResult orElse(),
  }) {
    if (getPatient != null) {
      return getPatient(this);
    }
    return orElse();
  }
}

abstract class GetPatient implements PatientEvent {
  const factory GetPatient(final int id) = _$GetPatientImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetPatientImplCopyWith<_$GetPatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCasesImplCopyWith<$Res> {
  factory _$$GetCasesImplCopyWith(
          _$GetCasesImpl value, $Res Function(_$GetCasesImpl) then) =
      __$$GetCasesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? patientId});
}

/// @nodoc
class __$$GetCasesImplCopyWithImpl<$Res>
    extends _$PatientEventCopyWithImpl<$Res, _$GetCasesImpl>
    implements _$$GetCasesImplCopyWith<$Res> {
  __$$GetCasesImplCopyWithImpl(
      _$GetCasesImpl _value, $Res Function(_$GetCasesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
  }) {
    return _then(_$GetCasesImpl(
      freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetCasesImpl implements GetCases {
  const _$GetCasesImpl(this.patientId);

  @override
  final int? patientId;

  @override
  String toString() {
    return 'PatientEvent.getCases(patientId: $patientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCasesImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCasesImplCopyWith<_$GetCasesImpl> get copyWith =>
      __$$GetCasesImplCopyWithImpl<_$GetCasesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPatient,
    required TResult Function(int? patientId) getCases,
    required TResult Function(PatientCaseBody body) postCase,
  }) {
    return getCases(patientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPatient,
    TResult? Function(int? patientId)? getCases,
    TResult? Function(PatientCaseBody body)? postCase,
  }) {
    return getCases?.call(patientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPatient,
    TResult Function(int? patientId)? getCases,
    TResult Function(PatientCaseBody body)? postCase,
    required TResult orElse(),
  }) {
    if (getCases != null) {
      return getCases(patientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatient value) getPatient,
    required TResult Function(GetCases value) getCases,
    required TResult Function(PostCase value) postCase,
  }) {
    return getCases(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatient value)? getPatient,
    TResult? Function(GetCases value)? getCases,
    TResult? Function(PostCase value)? postCase,
  }) {
    return getCases?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatient value)? getPatient,
    TResult Function(GetCases value)? getCases,
    TResult Function(PostCase value)? postCase,
    required TResult orElse(),
  }) {
    if (getCases != null) {
      return getCases(this);
    }
    return orElse();
  }
}

abstract class GetCases implements PatientEvent {
  const factory GetCases(final int? patientId) = _$GetCasesImpl;

  int? get patientId;
  @JsonKey(ignore: true)
  _$$GetCasesImplCopyWith<_$GetCasesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCaseImplCopyWith<$Res> {
  factory _$$PostCaseImplCopyWith(
          _$PostCaseImpl value, $Res Function(_$PostCaseImpl) then) =
      __$$PostCaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PatientCaseBody body});
}

/// @nodoc
class __$$PostCaseImplCopyWithImpl<$Res>
    extends _$PatientEventCopyWithImpl<$Res, _$PostCaseImpl>
    implements _$$PostCaseImplCopyWith<$Res> {
  __$$PostCaseImplCopyWithImpl(
      _$PostCaseImpl _value, $Res Function(_$PostCaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$PostCaseImpl(
      null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as PatientCaseBody,
    ));
  }
}

/// @nodoc

class _$PostCaseImpl implements PostCase {
  const _$PostCaseImpl(this.body);

  @override
  final PatientCaseBody body;

  @override
  String toString() {
    return 'PatientEvent.postCase(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCaseImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCaseImplCopyWith<_$PostCaseImpl> get copyWith =>
      __$$PostCaseImplCopyWithImpl<_$PostCaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPatient,
    required TResult Function(int? patientId) getCases,
    required TResult Function(PatientCaseBody body) postCase,
  }) {
    return postCase(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPatient,
    TResult? Function(int? patientId)? getCases,
    TResult? Function(PatientCaseBody body)? postCase,
  }) {
    return postCase?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPatient,
    TResult Function(int? patientId)? getCases,
    TResult Function(PatientCaseBody body)? postCase,
    required TResult orElse(),
  }) {
    if (postCase != null) {
      return postCase(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatient value) getPatient,
    required TResult Function(GetCases value) getCases,
    required TResult Function(PostCase value) postCase,
  }) {
    return postCase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatient value)? getPatient,
    TResult? Function(GetCases value)? getCases,
    TResult? Function(PostCase value)? postCase,
  }) {
    return postCase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatient value)? getPatient,
    TResult Function(GetCases value)? getCases,
    TResult Function(PostCase value)? postCase,
    required TResult orElse(),
  }) {
    if (postCase != null) {
      return postCase(this);
    }
    return orElse();
  }
}

abstract class PostCase implements PatientEvent {
  const factory PostCase(final PatientCaseBody body) = _$PostCaseImpl;

  PatientCaseBody get body;
  @JsonKey(ignore: true)
  _$$PostCaseImplCopyWith<_$PostCaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PatientState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PatientStateViewModel viewModel) loaded,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PatientStateViewModel viewModel)? loaded,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PatientStateViewModel viewModel)? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientStateCopyWith<$Res> {
  factory $PatientStateCopyWith(
          PatientState value, $Res Function(PatientState) then) =
      _$PatientStateCopyWithImpl<$Res, PatientState>;
}

/// @nodoc
class _$PatientStateCopyWithImpl<$Res, $Val extends PatientState>
    implements $PatientStateCopyWith<$Res> {
  _$PatientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PatientStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PatientState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PatientStateViewModel viewModel) loaded,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PatientStateViewModel viewModel)? loaded,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PatientStateViewModel viewModel)? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PatientState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PatientStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PatientState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PatientStateViewModel viewModel) loaded,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PatientStateViewModel viewModel)? loaded,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PatientStateViewModel viewModel)? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PatientState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PatientStateViewModel viewModel});

  $PatientStateViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PatientStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$LoadedImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as PatientStateViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientStateViewModelCopyWith<$Res> get viewModel {
    return $PatientStateViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final PatientStateViewModel viewModel;

  @override
  String toString() {
    return 'PatientState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PatientStateViewModel viewModel) loaded,
    required TResult Function() failed,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PatientStateViewModel viewModel)? loaded,
    TResult? Function()? failed,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PatientStateViewModel viewModel)? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PatientState {
  const factory _Loaded({required final PatientStateViewModel viewModel}) =
      _$LoadedImpl;

  PatientStateViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$PatientStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'PatientState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PatientStateViewModel viewModel) loaded,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PatientStateViewModel viewModel)? loaded,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PatientStateViewModel viewModel)? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PatientState {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
mixin _$PatientStateViewModel {
  PatientEntity? get patient => throw _privateConstructorUsedError;
  List<CaseEntity> get cases => throw _privateConstructorUsedError;
  PatientCaseBody? get patientCaseBody => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientStateViewModelCopyWith<PatientStateViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientStateViewModelCopyWith<$Res> {
  factory $PatientStateViewModelCopyWith(PatientStateViewModel value,
          $Res Function(PatientStateViewModel) then) =
      _$PatientStateViewModelCopyWithImpl<$Res, PatientStateViewModel>;
  @useResult
  $Res call(
      {PatientEntity? patient,
      List<CaseEntity> cases,
      PatientCaseBody? patientCaseBody});
}

/// @nodoc
class _$PatientStateViewModelCopyWithImpl<$Res,
        $Val extends PatientStateViewModel>
    implements $PatientStateViewModelCopyWith<$Res> {
  _$PatientStateViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = freezed,
    Object? cases = null,
    Object? patientCaseBody = freezed,
  }) {
    return _then(_value.copyWith(
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientEntity?,
      cases: null == cases
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as List<CaseEntity>,
      patientCaseBody: freezed == patientCaseBody
          ? _value.patientCaseBody
          : patientCaseBody // ignore: cast_nullable_to_non_nullable
              as PatientCaseBody?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientStateViewModelImplCopyWith<$Res>
    implements $PatientStateViewModelCopyWith<$Res> {
  factory _$$PatientStateViewModelImplCopyWith(
          _$PatientStateViewModelImpl value,
          $Res Function(_$PatientStateViewModelImpl) then) =
      __$$PatientStateViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PatientEntity? patient,
      List<CaseEntity> cases,
      PatientCaseBody? patientCaseBody});
}

/// @nodoc
class __$$PatientStateViewModelImplCopyWithImpl<$Res>
    extends _$PatientStateViewModelCopyWithImpl<$Res,
        _$PatientStateViewModelImpl>
    implements _$$PatientStateViewModelImplCopyWith<$Res> {
  __$$PatientStateViewModelImplCopyWithImpl(_$PatientStateViewModelImpl _value,
      $Res Function(_$PatientStateViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = freezed,
    Object? cases = null,
    Object? patientCaseBody = freezed,
  }) {
    return _then(_$PatientStateViewModelImpl(
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientEntity?,
      cases: null == cases
          ? _value._cases
          : cases // ignore: cast_nullable_to_non_nullable
              as List<CaseEntity>,
      patientCaseBody: freezed == patientCaseBody
          ? _value.patientCaseBody
          : patientCaseBody // ignore: cast_nullable_to_non_nullable
              as PatientCaseBody?,
    ));
  }
}

/// @nodoc

class _$PatientStateViewModelImpl implements _PatientStateViewModel {
  _$PatientStateViewModelImpl(
      {this.patient = null,
      final List<CaseEntity> cases = const [],
      this.patientCaseBody = null})
      : _cases = cases;

  @override
  @JsonKey()
  final PatientEntity? patient;
  final List<CaseEntity> _cases;
  @override
  @JsonKey()
  List<CaseEntity> get cases {
    if (_cases is EqualUnmodifiableListView) return _cases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cases);
  }

  @override
  @JsonKey()
  final PatientCaseBody? patientCaseBody;

  @override
  String toString() {
    return 'PatientStateViewModel(patient: $patient, cases: $cases, patientCaseBody: $patientCaseBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientStateViewModelImpl &&
            (identical(other.patient, patient) || other.patient == patient) &&
            const DeepCollectionEquality().equals(other._cases, _cases) &&
            (identical(other.patientCaseBody, patientCaseBody) ||
                other.patientCaseBody == patientCaseBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patient,
      const DeepCollectionEquality().hash(_cases), patientCaseBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientStateViewModelImplCopyWith<_$PatientStateViewModelImpl>
      get copyWith => __$$PatientStateViewModelImplCopyWithImpl<
          _$PatientStateViewModelImpl>(this, _$identity);
}

abstract class _PatientStateViewModel implements PatientStateViewModel {
  factory _PatientStateViewModel(
      {final PatientEntity? patient,
      final List<CaseEntity> cases,
      final PatientCaseBody? patientCaseBody}) = _$PatientStateViewModelImpl;

  @override
  PatientEntity? get patient;
  @override
  List<CaseEntity> get cases;
  @override
  PatientCaseBody? get patientCaseBody;
  @override
  @JsonKey(ignore: true)
  _$$PatientStateViewModelImplCopyWith<_$PatientStateViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
