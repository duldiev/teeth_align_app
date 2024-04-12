// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleDeleteMode,
    required TResult Function(CameraController controller) takePicture,
    required TResult Function(int index) removePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleDeleteMode,
    TResult? Function(CameraController controller)? takePicture,
    TResult? Function(int index)? removePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleDeleteMode,
    TResult Function(CameraController controller)? takePicture,
    TResult Function(int index)? removePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleDeleteMode value) toggleDeleteMode,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(RemovePicture value) removePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult? Function(TakePicture value)? takePicture,
    TResult? Function(RemovePicture value)? removePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(RemovePicture value)? removePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res, CameraEvent>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res, $Val extends CameraEvent>
    implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleDeleteModeImplCopyWith<$Res> {
  factory _$$ToggleDeleteModeImplCopyWith(_$ToggleDeleteModeImpl value,
          $Res Function(_$ToggleDeleteModeImpl) then) =
      __$$ToggleDeleteModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ToggleDeleteModeImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$ToggleDeleteModeImpl>
    implements _$$ToggleDeleteModeImplCopyWith<$Res> {
  __$$ToggleDeleteModeImplCopyWithImpl(_$ToggleDeleteModeImpl _value,
      $Res Function(_$ToggleDeleteModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ToggleDeleteModeImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleDeleteModeImpl
    with DiagnosticableTreeMixin
    implements ToggleDeleteMode {
  const _$ToggleDeleteModeImpl(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraEvent.toggleDeleteMode(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraEvent.toggleDeleteMode'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleDeleteModeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleDeleteModeImplCopyWith<_$ToggleDeleteModeImpl> get copyWith =>
      __$$ToggleDeleteModeImplCopyWithImpl<_$ToggleDeleteModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleDeleteMode,
    required TResult Function(CameraController controller) takePicture,
    required TResult Function(int index) removePicture,
  }) {
    return toggleDeleteMode(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleDeleteMode,
    TResult? Function(CameraController controller)? takePicture,
    TResult? Function(int index)? removePicture,
  }) {
    return toggleDeleteMode?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleDeleteMode,
    TResult Function(CameraController controller)? takePicture,
    TResult Function(int index)? removePicture,
    required TResult orElse(),
  }) {
    if (toggleDeleteMode != null) {
      return toggleDeleteMode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleDeleteMode value) toggleDeleteMode,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(RemovePicture value) removePicture,
  }) {
    return toggleDeleteMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult? Function(TakePicture value)? takePicture,
    TResult? Function(RemovePicture value)? removePicture,
  }) {
    return toggleDeleteMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(RemovePicture value)? removePicture,
    required TResult orElse(),
  }) {
    if (toggleDeleteMode != null) {
      return toggleDeleteMode(this);
    }
    return orElse();
  }
}

abstract class ToggleDeleteMode implements CameraEvent {
  const factory ToggleDeleteMode(final bool value) = _$ToggleDeleteModeImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$ToggleDeleteModeImplCopyWith<_$ToggleDeleteModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TakePictureImplCopyWith<$Res> {
  factory _$$TakePictureImplCopyWith(
          _$TakePictureImpl value, $Res Function(_$TakePictureImpl) then) =
      __$$TakePictureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraController controller});
}

/// @nodoc
class __$$TakePictureImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$TakePictureImpl>
    implements _$$TakePictureImplCopyWith<$Res> {
  __$$TakePictureImplCopyWithImpl(
      _$TakePictureImpl _value, $Res Function(_$TakePictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$TakePictureImpl(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
    ));
  }
}

/// @nodoc

class _$TakePictureImpl with DiagnosticableTreeMixin implements TakePicture {
  const _$TakePictureImpl({required this.controller});

  @override
  final CameraController controller;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraEvent.takePicture(controller: $controller)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraEvent.takePicture'))
      ..add(DiagnosticsProperty('controller', controller));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakePictureImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakePictureImplCopyWith<_$TakePictureImpl> get copyWith =>
      __$$TakePictureImplCopyWithImpl<_$TakePictureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleDeleteMode,
    required TResult Function(CameraController controller) takePicture,
    required TResult Function(int index) removePicture,
  }) {
    return takePicture(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleDeleteMode,
    TResult? Function(CameraController controller)? takePicture,
    TResult? Function(int index)? removePicture,
  }) {
    return takePicture?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleDeleteMode,
    TResult Function(CameraController controller)? takePicture,
    TResult Function(int index)? removePicture,
    required TResult orElse(),
  }) {
    if (takePicture != null) {
      return takePicture(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleDeleteMode value) toggleDeleteMode,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(RemovePicture value) removePicture,
  }) {
    return takePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult? Function(TakePicture value)? takePicture,
    TResult? Function(RemovePicture value)? removePicture,
  }) {
    return takePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(RemovePicture value)? removePicture,
    required TResult orElse(),
  }) {
    if (takePicture != null) {
      return takePicture(this);
    }
    return orElse();
  }
}

abstract class TakePicture implements CameraEvent {
  const factory TakePicture({required final CameraController controller}) =
      _$TakePictureImpl;

  CameraController get controller;
  @JsonKey(ignore: true)
  _$$TakePictureImplCopyWith<_$TakePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovePictureImplCopyWith<$Res> {
  factory _$$RemovePictureImplCopyWith(
          _$RemovePictureImpl value, $Res Function(_$RemovePictureImpl) then) =
      __$$RemovePictureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemovePictureImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$RemovePictureImpl>
    implements _$$RemovePictureImplCopyWith<$Res> {
  __$$RemovePictureImplCopyWithImpl(
      _$RemovePictureImpl _value, $Res Function(_$RemovePictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemovePictureImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemovePictureImpl
    with DiagnosticableTreeMixin
    implements RemovePicture {
  const _$RemovePictureImpl(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraEvent.removePicture(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraEvent.removePicture'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovePictureImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovePictureImplCopyWith<_$RemovePictureImpl> get copyWith =>
      __$$RemovePictureImplCopyWithImpl<_$RemovePictureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleDeleteMode,
    required TResult Function(CameraController controller) takePicture,
    required TResult Function(int index) removePicture,
  }) {
    return removePicture(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleDeleteMode,
    TResult? Function(CameraController controller)? takePicture,
    TResult? Function(int index)? removePicture,
  }) {
    return removePicture?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleDeleteMode,
    TResult Function(CameraController controller)? takePicture,
    TResult Function(int index)? removePicture,
    required TResult orElse(),
  }) {
    if (removePicture != null) {
      return removePicture(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleDeleteMode value) toggleDeleteMode,
    required TResult Function(TakePicture value) takePicture,
    required TResult Function(RemovePicture value) removePicture,
  }) {
    return removePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult? Function(TakePicture value)? takePicture,
    TResult? Function(RemovePicture value)? removePicture,
  }) {
    return removePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleDeleteMode value)? toggleDeleteMode,
    TResult Function(TakePicture value)? takePicture,
    TResult Function(RemovePicture value)? removePicture,
    required TResult orElse(),
  }) {
    if (removePicture != null) {
      return removePicture(this);
    }
    return orElse();
  }
}

abstract class RemovePicture implements CameraEvent {
  const factory RemovePicture(final int index) = _$RemovePictureImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemovePictureImplCopyWith<_$RemovePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CameraState {
  bool get isDeleteMode => throw _privateConstructorUsedError;
  XFile? get file => throw _privateConstructorUsedError;
  LoadStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call({bool isDeleteMode, XFile? file, LoadStatus status});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeleteMode = null,
    Object? file = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isDeleteMode: null == isDeleteMode
          ? _value.isDeleteMode
          : isDeleteMode // ignore: cast_nullable_to_non_nullable
              as bool,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraStateImplCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$CameraStateImplCopyWith(
          _$CameraStateImpl value, $Res Function(_$CameraStateImpl) then) =
      __$$CameraStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDeleteMode, XFile? file, LoadStatus status});
}

/// @nodoc
class __$$CameraStateImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraStateImpl>
    implements _$$CameraStateImplCopyWith<$Res> {
  __$$CameraStateImplCopyWithImpl(
      _$CameraStateImpl _value, $Res Function(_$CameraStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeleteMode = null,
    Object? file = freezed,
    Object? status = null,
  }) {
    return _then(_$CameraStateImpl(
      isDeleteMode: null == isDeleteMode
          ? _value.isDeleteMode
          : isDeleteMode // ignore: cast_nullable_to_non_nullable
              as bool,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$CameraStateImpl extends _CameraState with DiagnosticableTreeMixin {
  _$CameraStateImpl(
      {this.isDeleteMode = false,
      this.file = null,
      this.status = LoadStatus.initial})
      : super._();

  @override
  @JsonKey()
  final bool isDeleteMode;
  @override
  @JsonKey()
  final XFile? file;
  @override
  @JsonKey()
  final LoadStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState(isDeleteMode: $isDeleteMode, file: $file, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState'))
      ..add(DiagnosticsProperty('isDeleteMode', isDeleteMode))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraStateImpl &&
            (identical(other.isDeleteMode, isDeleteMode) ||
                other.isDeleteMode == isDeleteMode) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDeleteMode, file, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraStateImplCopyWith<_$CameraStateImpl> get copyWith =>
      __$$CameraStateImplCopyWithImpl<_$CameraStateImpl>(this, _$identity);
}

abstract class _CameraState extends CameraState {
  factory _CameraState(
      {final bool isDeleteMode,
      final XFile? file,
      final LoadStatus status}) = _$CameraStateImpl;
  _CameraState._() : super._();

  @override
  bool get isDeleteMode;
  @override
  XFile? get file;
  @override
  LoadStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CameraStateImplCopyWith<_$CameraStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
