// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_case_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateCaseEvent {
  CaseField get field => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CaseField field) uploadImage,
    required TResult Function(CaseField field) captureImage,
    required TResult Function(CaseField field) deleteImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CaseField field)? uploadImage,
    TResult? Function(CaseField field)? captureImage,
    TResult? Function(CaseField field)? deleteImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CaseField field)? uploadImage,
    TResult Function(CaseField field)? captureImage,
    TResult Function(CaseField field)? deleteImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(CaptureImage value) captureImage,
    required TResult Function(DeleteImage value) deleteImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(CaptureImage value)? captureImage,
    TResult? Function(DeleteImage value)? deleteImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(CaptureImage value)? captureImage,
    TResult Function(DeleteImage value)? deleteImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCaseEventCopyWith<CreateCaseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCaseEventCopyWith<$Res> {
  factory $CreateCaseEventCopyWith(
          CreateCaseEvent value, $Res Function(CreateCaseEvent) then) =
      _$CreateCaseEventCopyWithImpl<$Res, CreateCaseEvent>;
  @useResult
  $Res call({CaseField field});
}

/// @nodoc
class _$CreateCaseEventCopyWithImpl<$Res, $Val extends CreateCaseEvent>
    implements $CreateCaseEventCopyWith<$Res> {
  _$CreateCaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CaseField,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res>
    implements $CreateCaseEventCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CaseField field});
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$CreateCaseEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_$UploadImageImpl(
      null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CaseField,
    ));
  }
}

/// @nodoc

class _$UploadImageImpl implements UploadImage {
  const _$UploadImageImpl(this.field);

  @override
  final CaseField field;

  @override
  String toString() {
    return 'CreateCaseEvent.uploadImage(field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageImpl &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      __$$UploadImageImplCopyWithImpl<_$UploadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CaseField field) uploadImage,
    required TResult Function(CaseField field) captureImage,
    required TResult Function(CaseField field) deleteImage,
  }) {
    return uploadImage(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CaseField field)? uploadImage,
    TResult? Function(CaseField field)? captureImage,
    TResult? Function(CaseField field)? deleteImage,
  }) {
    return uploadImage?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CaseField field)? uploadImage,
    TResult Function(CaseField field)? captureImage,
    TResult Function(CaseField field)? deleteImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(CaptureImage value) captureImage,
    required TResult Function(DeleteImage value) deleteImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(CaptureImage value)? captureImage,
    TResult? Function(DeleteImage value)? deleteImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(CaptureImage value)? captureImage,
    TResult Function(DeleteImage value)? deleteImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class UploadImage implements CreateCaseEvent {
  const factory UploadImage(final CaseField field) = _$UploadImageImpl;

  @override
  CaseField get field;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CaptureImageImplCopyWith<$Res>
    implements $CreateCaseEventCopyWith<$Res> {
  factory _$$CaptureImageImplCopyWith(
          _$CaptureImageImpl value, $Res Function(_$CaptureImageImpl) then) =
      __$$CaptureImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CaseField field});
}

/// @nodoc
class __$$CaptureImageImplCopyWithImpl<$Res>
    extends _$CreateCaseEventCopyWithImpl<$Res, _$CaptureImageImpl>
    implements _$$CaptureImageImplCopyWith<$Res> {
  __$$CaptureImageImplCopyWithImpl(
      _$CaptureImageImpl _value, $Res Function(_$CaptureImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_$CaptureImageImpl(
      null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CaseField,
    ));
  }
}

/// @nodoc

class _$CaptureImageImpl implements CaptureImage {
  const _$CaptureImageImpl(this.field);

  @override
  final CaseField field;

  @override
  String toString() {
    return 'CreateCaseEvent.captureImage(field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptureImageImpl &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptureImageImplCopyWith<_$CaptureImageImpl> get copyWith =>
      __$$CaptureImageImplCopyWithImpl<_$CaptureImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CaseField field) uploadImage,
    required TResult Function(CaseField field) captureImage,
    required TResult Function(CaseField field) deleteImage,
  }) {
    return captureImage(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CaseField field)? uploadImage,
    TResult? Function(CaseField field)? captureImage,
    TResult? Function(CaseField field)? deleteImage,
  }) {
    return captureImage?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CaseField field)? uploadImage,
    TResult Function(CaseField field)? captureImage,
    TResult Function(CaseField field)? deleteImage,
    required TResult orElse(),
  }) {
    if (captureImage != null) {
      return captureImage(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(CaptureImage value) captureImage,
    required TResult Function(DeleteImage value) deleteImage,
  }) {
    return captureImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(CaptureImage value)? captureImage,
    TResult? Function(DeleteImage value)? deleteImage,
  }) {
    return captureImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(CaptureImage value)? captureImage,
    TResult Function(DeleteImage value)? deleteImage,
    required TResult orElse(),
  }) {
    if (captureImage != null) {
      return captureImage(this);
    }
    return orElse();
  }
}

abstract class CaptureImage implements CreateCaseEvent {
  const factory CaptureImage(final CaseField field) = _$CaptureImageImpl;

  @override
  CaseField get field;
  @override
  @JsonKey(ignore: true)
  _$$CaptureImageImplCopyWith<_$CaptureImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImageImplCopyWith<$Res>
    implements $CreateCaseEventCopyWith<$Res> {
  factory _$$DeleteImageImplCopyWith(
          _$DeleteImageImpl value, $Res Function(_$DeleteImageImpl) then) =
      __$$DeleteImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CaseField field});
}

/// @nodoc
class __$$DeleteImageImplCopyWithImpl<$Res>
    extends _$CreateCaseEventCopyWithImpl<$Res, _$DeleteImageImpl>
    implements _$$DeleteImageImplCopyWith<$Res> {
  __$$DeleteImageImplCopyWithImpl(
      _$DeleteImageImpl _value, $Res Function(_$DeleteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_$DeleteImageImpl(
      null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CaseField,
    ));
  }
}

/// @nodoc

class _$DeleteImageImpl implements DeleteImage {
  const _$DeleteImageImpl(this.field);

  @override
  final CaseField field;

  @override
  String toString() {
    return 'CreateCaseEvent.deleteImage(field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImageImpl &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImageImplCopyWith<_$DeleteImageImpl> get copyWith =>
      __$$DeleteImageImplCopyWithImpl<_$DeleteImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CaseField field) uploadImage,
    required TResult Function(CaseField field) captureImage,
    required TResult Function(CaseField field) deleteImage,
  }) {
    return deleteImage(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CaseField field)? uploadImage,
    TResult? Function(CaseField field)? captureImage,
    TResult? Function(CaseField field)? deleteImage,
  }) {
    return deleteImage?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CaseField field)? uploadImage,
    TResult Function(CaseField field)? captureImage,
    TResult Function(CaseField field)? deleteImage,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(CaptureImage value) captureImage,
    required TResult Function(DeleteImage value) deleteImage,
  }) {
    return deleteImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(CaptureImage value)? captureImage,
    TResult? Function(DeleteImage value)? deleteImage,
  }) {
    return deleteImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(CaptureImage value)? captureImage,
    TResult Function(DeleteImage value)? deleteImage,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(this);
    }
    return orElse();
  }
}

abstract class DeleteImage implements CreateCaseEvent {
  const factory DeleteImage(final CaseField field) = _$DeleteImageImpl;

  @override
  CaseField get field;
  @override
  @JsonKey(ignore: true)
  _$$DeleteImageImplCopyWith<_$DeleteImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateCaseState {
  Map<CaseField, XFile?> get caseImages => throw _privateConstructorUsedError;
  LoadStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCaseStateCopyWith<CreateCaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCaseStateCopyWith<$Res> {
  factory $CreateCaseStateCopyWith(
          CreateCaseState value, $Res Function(CreateCaseState) then) =
      _$CreateCaseStateCopyWithImpl<$Res, CreateCaseState>;
  @useResult
  $Res call({Map<CaseField, XFile?> caseImages, LoadStatus status});
}

/// @nodoc
class _$CreateCaseStateCopyWithImpl<$Res, $Val extends CreateCaseState>
    implements $CreateCaseStateCopyWith<$Res> {
  _$CreateCaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseImages = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      caseImages: null == caseImages
          ? _value.caseImages
          : caseImages // ignore: cast_nullable_to_non_nullable
              as Map<CaseField, XFile?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCaseStateImplCopyWith<$Res>
    implements $CreateCaseStateCopyWith<$Res> {
  factory _$$CreateCaseStateImplCopyWith(_$CreateCaseStateImpl value,
          $Res Function(_$CreateCaseStateImpl) then) =
      __$$CreateCaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<CaseField, XFile?> caseImages, LoadStatus status});
}

/// @nodoc
class __$$CreateCaseStateImplCopyWithImpl<$Res>
    extends _$CreateCaseStateCopyWithImpl<$Res, _$CreateCaseStateImpl>
    implements _$$CreateCaseStateImplCopyWith<$Res> {
  __$$CreateCaseStateImplCopyWithImpl(
      _$CreateCaseStateImpl _value, $Res Function(_$CreateCaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseImages = null,
    Object? status = null,
  }) {
    return _then(_$CreateCaseStateImpl(
      caseImages: null == caseImages
          ? _value._caseImages
          : caseImages // ignore: cast_nullable_to_non_nullable
              as Map<CaseField, XFile?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$CreateCaseStateImpl extends _CreateCaseState {
  _$CreateCaseStateImpl(
      {final Map<CaseField, XFile?> caseImages = const {},
      this.status = LoadStatus.initial})
      : _caseImages = caseImages,
        super._();

  final Map<CaseField, XFile?> _caseImages;
  @override
  @JsonKey()
  Map<CaseField, XFile?> get caseImages {
    if (_caseImages is EqualUnmodifiableMapView) return _caseImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_caseImages);
  }

  @override
  @JsonKey()
  final LoadStatus status;

  @override
  String toString() {
    return 'CreateCaseState(caseImages: $caseImages, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCaseStateImpl &&
            const DeepCollectionEquality()
                .equals(other._caseImages, _caseImages) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_caseImages), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCaseStateImplCopyWith<_$CreateCaseStateImpl> get copyWith =>
      __$$CreateCaseStateImplCopyWithImpl<_$CreateCaseStateImpl>(
          this, _$identity);
}

abstract class _CreateCaseState extends CreateCaseState {
  factory _CreateCaseState(
      {final Map<CaseField, XFile?> caseImages,
      final LoadStatus status}) = _$CreateCaseStateImpl;
  _CreateCaseState._() : super._();

  @override
  Map<CaseField, XFile?> get caseImages;
  @override
  LoadStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CreateCaseStateImplCopyWith<_$CreateCaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
