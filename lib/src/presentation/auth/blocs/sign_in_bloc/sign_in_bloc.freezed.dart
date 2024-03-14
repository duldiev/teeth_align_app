// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInField field, String value) changeField,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuthorized,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInField field, String value)? changeField,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthorized,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInField field, String value)? changeField,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuthorized,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthorized value) checkAuthorized,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthorized value)? checkAuthorized,
    TResult? Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthorized value)? checkAuthorized,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeFieldImplCopyWith<$Res> {
  factory _$$ChangeFieldImplCopyWith(
          _$ChangeFieldImpl value, $Res Function(_$ChangeFieldImpl) then) =
      __$$ChangeFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInField field, String value});
}

/// @nodoc
class __$$ChangeFieldImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ChangeFieldImpl>
    implements _$$ChangeFieldImplCopyWith<$Res> {
  __$$ChangeFieldImplCopyWithImpl(
      _$ChangeFieldImpl _value, $Res Function(_$ChangeFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? value = null,
  }) {
    return _then(_$ChangeFieldImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as SignInField,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeFieldImpl implements ChangeField {
  const _$ChangeFieldImpl({required this.field, required this.value});

  @override
  final SignInField field;
  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.changeField(field: $field, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFieldImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFieldImplCopyWith<_$ChangeFieldImpl> get copyWith =>
      __$$ChangeFieldImplCopyWithImpl<_$ChangeFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInField field, String value) changeField,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuthorized,
    required TResult Function() reset,
  }) {
    return changeField(field, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInField field, String value)? changeField,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthorized,
    TResult? Function()? reset,
  }) {
    return changeField?.call(field, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInField field, String value)? changeField,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuthorized,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (changeField != null) {
      return changeField(field, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthorized value) checkAuthorized,
    required TResult Function(Reset value) reset,
  }) {
    return changeField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthorized value)? checkAuthorized,
    TResult? Function(Reset value)? reset,
  }) {
    return changeField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthorized value)? checkAuthorized,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (changeField != null) {
      return changeField(this);
    }
    return orElse();
  }
}

abstract class ChangeField implements SignInEvent {
  const factory ChangeField(
      {required final SignInField field,
      required final String value}) = _$ChangeFieldImpl;

  SignInField get field;
  String get value;
  @JsonKey(ignore: true)
  _$$ChangeFieldImplCopyWith<_$ChangeFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInImpl implements SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'SignInEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInField field, String value) changeField,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuthorized,
    required TResult Function() reset,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInField field, String value)? changeField,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthorized,
    TResult? Function()? reset,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInField field, String value)? changeField,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuthorized,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthorized value) checkAuthorized,
    required TResult Function(Reset value) reset,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthorized value)? checkAuthorized,
    TResult? Function(Reset value)? reset,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthorized value)? checkAuthorized,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements SignInEvent {
  const factory SignIn() = _$SignInImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'SignInEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInField field, String value) changeField,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuthorized,
    required TResult Function() reset,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInField field, String value)? changeField,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthorized,
    TResult? Function()? reset,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInField field, String value)? changeField,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuthorized,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthorized value) checkAuthorized,
    required TResult Function(Reset value) reset,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthorized value)? checkAuthorized,
    TResult? Function(Reset value)? reset,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthorized value)? checkAuthorized,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements SignInEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$CheckAuthorizedImplCopyWith<$Res> {
  factory _$$CheckAuthorizedImplCopyWith(_$CheckAuthorizedImpl value,
          $Res Function(_$CheckAuthorizedImpl) then) =
      __$$CheckAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthorizedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$CheckAuthorizedImpl>
    implements _$$CheckAuthorizedImplCopyWith<$Res> {
  __$$CheckAuthorizedImplCopyWithImpl(
      _$CheckAuthorizedImpl _value, $Res Function(_$CheckAuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthorizedImpl implements CheckAuthorized {
  const _$CheckAuthorizedImpl();

  @override
  String toString() {
    return 'SignInEvent.checkAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInField field, String value) changeField,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuthorized,
    required TResult Function() reset,
  }) {
    return checkAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInField field, String value)? changeField,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthorized,
    TResult? Function()? reset,
  }) {
    return checkAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInField field, String value)? changeField,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuthorized,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (checkAuthorized != null) {
      return checkAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthorized value) checkAuthorized,
    required TResult Function(Reset value) reset,
  }) {
    return checkAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthorized value)? checkAuthorized,
    TResult? Function(Reset value)? reset,
  }) {
    return checkAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthorized value)? checkAuthorized,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (checkAuthorized != null) {
      return checkAuthorized(this);
    }
    return orElse();
  }
}

abstract class CheckAuthorized implements SignInEvent {
  const factory CheckAuthorized() = _$CheckAuthorizedImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'SignInEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInField field, String value) changeField,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function() checkAuthorized,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInField field, String value)? changeField,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthorized,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInField field, String value)? changeField,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function()? checkAuthorized,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(CheckAuthorized value) checkAuthorized,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(CheckAuthorized value)? checkAuthorized,
    TResult? Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(CheckAuthorized value)? checkAuthorized,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements SignInEvent {
  const factory Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$SignInState {
  SignInBody? get signInBody => throw _privateConstructorUsedError;
  LoadStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({SignInBody? signInBody, LoadStatus status});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInBody = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      signInBody: freezed == signInBody
          ? _value.signInBody
          : signInBody // ignore: cast_nullable_to_non_nullable
              as SignInBody?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInBody? signInBody, LoadStatus status});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInBody = freezed,
    Object? status = null,
  }) {
    return _then(_$SignInStateImpl(
      signInBody: freezed == signInBody
          ? _value.signInBody
          : signInBody // ignore: cast_nullable_to_non_nullable
              as SignInBody?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl extends _SignInState {
  _$SignInStateImpl({this.signInBody = null, this.status = LoadStatus.initial})
      : super._();

  @override
  @JsonKey()
  final SignInBody? signInBody;
  @override
  @JsonKey()
  final LoadStatus status;

  @override
  String toString() {
    return 'SignInState(signInBody: $signInBody, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.signInBody, signInBody) ||
                other.signInBody == signInBody) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInBody, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  factory _SignInState(
      {final SignInBody? signInBody,
      final LoadStatus status}) = _$SignInStateImpl;
  _SignInState._() : super._();

  @override
  SignInBody? get signInBody;
  @override
  LoadStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
