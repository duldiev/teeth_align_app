// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  void Function(bool) get callback => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(bool) callback) nextField,
    required TResult Function(void Function(bool) callback) prevField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(bool) callback)? nextField,
    TResult? Function(void Function(bool) callback)? prevField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(bool) callback)? nextField,
    TResult Function(void Function(bool) callback)? prevField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextField value) nextField,
    required TResult Function(PrevField value) prevField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextField value)? nextField,
    TResult? Function(PrevField value)? prevField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextField value)? nextField,
    TResult Function(PrevField value)? prevField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call({void Function(bool) callback});
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_value.copyWith(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(bool),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextFieldImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$NextFieldImplCopyWith(
          _$NextFieldImpl value, $Res Function(_$NextFieldImpl) then) =
      __$$NextFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function(bool) callback});
}

/// @nodoc
class __$$NextFieldImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$NextFieldImpl>
    implements _$$NextFieldImplCopyWith<$Res> {
  __$$NextFieldImplCopyWithImpl(
      _$NextFieldImpl _value, $Res Function(_$NextFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$NextFieldImpl(
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(bool),
    ));
  }
}

/// @nodoc

class _$NextFieldImpl implements NextField {
  const _$NextFieldImpl(this.callback);

  @override
  final void Function(bool) callback;

  @override
  String toString() {
    return 'SignUpEvent.nextField(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextFieldImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextFieldImplCopyWith<_$NextFieldImpl> get copyWith =>
      __$$NextFieldImplCopyWithImpl<_$NextFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(bool) callback) nextField,
    required TResult Function(void Function(bool) callback) prevField,
  }) {
    return nextField(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(bool) callback)? nextField,
    TResult? Function(void Function(bool) callback)? prevField,
  }) {
    return nextField?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(bool) callback)? nextField,
    TResult Function(void Function(bool) callback)? prevField,
    required TResult orElse(),
  }) {
    if (nextField != null) {
      return nextField(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextField value) nextField,
    required TResult Function(PrevField value) prevField,
  }) {
    return nextField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextField value)? nextField,
    TResult? Function(PrevField value)? prevField,
  }) {
    return nextField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextField value)? nextField,
    TResult Function(PrevField value)? prevField,
    required TResult orElse(),
  }) {
    if (nextField != null) {
      return nextField(this);
    }
    return orElse();
  }
}

abstract class NextField implements SignUpEvent {
  const factory NextField(final void Function(bool) callback) = _$NextFieldImpl;

  @override
  void Function(bool) get callback;
  @override
  @JsonKey(ignore: true)
  _$$NextFieldImplCopyWith<_$NextFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrevFieldImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$PrevFieldImplCopyWith(
          _$PrevFieldImpl value, $Res Function(_$PrevFieldImpl) then) =
      __$$PrevFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function(bool) callback});
}

/// @nodoc
class __$$PrevFieldImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PrevFieldImpl>
    implements _$$PrevFieldImplCopyWith<$Res> {
  __$$PrevFieldImplCopyWithImpl(
      _$PrevFieldImpl _value, $Res Function(_$PrevFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$PrevFieldImpl(
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(bool),
    ));
  }
}

/// @nodoc

class _$PrevFieldImpl implements PrevField {
  const _$PrevFieldImpl(this.callback);

  @override
  final void Function(bool) callback;

  @override
  String toString() {
    return 'SignUpEvent.prevField(callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrevFieldImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrevFieldImplCopyWith<_$PrevFieldImpl> get copyWith =>
      __$$PrevFieldImplCopyWithImpl<_$PrevFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(bool) callback) nextField,
    required TResult Function(void Function(bool) callback) prevField,
  }) {
    return prevField(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(bool) callback)? nextField,
    TResult? Function(void Function(bool) callback)? prevField,
  }) {
    return prevField?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(bool) callback)? nextField,
    TResult Function(void Function(bool) callback)? prevField,
    required TResult orElse(),
  }) {
    if (prevField != null) {
      return prevField(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextField value) nextField,
    required TResult Function(PrevField value) prevField,
  }) {
    return prevField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextField value)? nextField,
    TResult? Function(PrevField value)? prevField,
  }) {
    return prevField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextField value)? nextField,
    TResult Function(PrevField value)? prevField,
    required TResult orElse(),
  }) {
    if (prevField != null) {
      return prevField(this);
    }
    return orElse();
  }
}

abstract class PrevField implements SignUpEvent {
  const factory PrevField(final void Function(bool) callback) = _$PrevFieldImpl;

  @override
  void Function(bool) get callback;
  @override
  @JsonKey(ignore: true)
  _$$PrevFieldImplCopyWith<_$PrevFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  LoadStatus get status => throw _privateConstructorUsedError;
  SignUpFieldsView get currentFieldsView => throw _privateConstructorUsedError;
  int get currentStepNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {LoadStatus status,
      SignUpFieldsView currentFieldsView,
      int currentStepNumber});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentFieldsView = null,
    Object? currentStepNumber = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      currentFieldsView: null == currentFieldsView
          ? _value.currentFieldsView
          : currentFieldsView // ignore: cast_nullable_to_non_nullable
              as SignUpFieldsView,
      currentStepNumber: null == currentStepNumber
          ? _value.currentStepNumber
          : currentStepNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadStatus status,
      SignUpFieldsView currentFieldsView,
      int currentStepNumber});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentFieldsView = null,
    Object? currentStepNumber = null,
  }) {
    return _then(_$SignUpStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      currentFieldsView: null == currentFieldsView
          ? _value.currentFieldsView
          : currentFieldsView // ignore: cast_nullable_to_non_nullable
              as SignUpFieldsView,
      currentStepNumber: null == currentStepNumber
          ? _value.currentStepNumber
          : currentStepNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl extends _SignUpState {
  _$SignUpStateImpl(
      {this.status = LoadStatus.initial,
      this.currentFieldsView = SUFV.role,
      this.currentStepNumber = 1})
      : super._();

  @override
  @JsonKey()
  final LoadStatus status;
  @override
  @JsonKey()
  final SignUpFieldsView currentFieldsView;
  @override
  @JsonKey()
  final int currentStepNumber;

  @override
  String toString() {
    return 'SignUpState(status: $status, currentFieldsView: $currentFieldsView, currentStepNumber: $currentStepNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentFieldsView, currentFieldsView) ||
                other.currentFieldsView == currentFieldsView) &&
            (identical(other.currentStepNumber, currentStepNumber) ||
                other.currentStepNumber == currentStepNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, currentFieldsView, currentStepNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  factory _SignUpState(
      {final LoadStatus status,
      final SignUpFieldsView currentFieldsView,
      final int currentStepNumber}) = _$SignUpStateImpl;
  _SignUpState._() : super._();

  @override
  LoadStatus get status;
  @override
  SignUpFieldsView get currentFieldsView;
  @override
  int get currentStepNumber;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
