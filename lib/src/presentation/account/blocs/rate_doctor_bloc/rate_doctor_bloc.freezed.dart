// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RateDoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RateDoctorField field, dynamic value) changeField,
    required TResult Function(int doctorId) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RateDoctorField field, dynamic value)? changeField,
    TResult? Function(int doctorId)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RateDoctorField field, dynamic value)? changeField,
    TResult Function(int doctorId)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(Send value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(Send value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(Send value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateDoctorEventCopyWith<$Res> {
  factory $RateDoctorEventCopyWith(
          RateDoctorEvent value, $Res Function(RateDoctorEvent) then) =
      _$RateDoctorEventCopyWithImpl<$Res, RateDoctorEvent>;
}

/// @nodoc
class _$RateDoctorEventCopyWithImpl<$Res, $Val extends RateDoctorEvent>
    implements $RateDoctorEventCopyWith<$Res> {
  _$RateDoctorEventCopyWithImpl(this._value, this._then);

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
  $Res call({RateDoctorField field, dynamic value});
}

/// @nodoc
class __$$ChangeFieldImplCopyWithImpl<$Res>
    extends _$RateDoctorEventCopyWithImpl<$Res, _$ChangeFieldImpl>
    implements _$$ChangeFieldImplCopyWith<$Res> {
  __$$ChangeFieldImplCopyWithImpl(
      _$ChangeFieldImpl _value, $Res Function(_$ChangeFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? value = freezed,
  }) {
    return _then(_$ChangeFieldImpl(
      null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as RateDoctorField,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ChangeFieldImpl implements ChangeField {
  const _$ChangeFieldImpl(this.field, this.value);

  @override
  final RateDoctorField field;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'RateDoctorEvent.changeField(field: $field, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFieldImpl &&
            (identical(other.field, field) || other.field == field) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, field, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFieldImplCopyWith<_$ChangeFieldImpl> get copyWith =>
      __$$ChangeFieldImplCopyWithImpl<_$ChangeFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RateDoctorField field, dynamic value) changeField,
    required TResult Function(int doctorId) send,
  }) {
    return changeField(field, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RateDoctorField field, dynamic value)? changeField,
    TResult? Function(int doctorId)? send,
  }) {
    return changeField?.call(field, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RateDoctorField field, dynamic value)? changeField,
    TResult Function(int doctorId)? send,
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
    required TResult Function(Send value) send,
  }) {
    return changeField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(Send value)? send,
  }) {
    return changeField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(Send value)? send,
    required TResult orElse(),
  }) {
    if (changeField != null) {
      return changeField(this);
    }
    return orElse();
  }
}

abstract class ChangeField implements RateDoctorEvent {
  const factory ChangeField(final RateDoctorField field, final dynamic value) =
      _$ChangeFieldImpl;

  RateDoctorField get field;
  dynamic get value;
  @JsonKey(ignore: true)
  _$$ChangeFieldImplCopyWith<_$ChangeFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImplCopyWith<$Res> {
  factory _$$SendImplCopyWith(
          _$SendImpl value, $Res Function(_$SendImpl) then) =
      __$$SendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int doctorId});
}

/// @nodoc
class __$$SendImplCopyWithImpl<$Res>
    extends _$RateDoctorEventCopyWithImpl<$Res, _$SendImpl>
    implements _$$SendImplCopyWith<$Res> {
  __$$SendImplCopyWithImpl(_$SendImpl _value, $Res Function(_$SendImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_$SendImpl(
      null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendImpl implements Send {
  const _$SendImpl(this.doctorId);

  @override
  final int doctorId;

  @override
  String toString() {
    return 'RateDoctorEvent.send(doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      __$$SendImplCopyWithImpl<_$SendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RateDoctorField field, dynamic value) changeField,
    required TResult Function(int doctorId) send,
  }) {
    return send(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RateDoctorField field, dynamic value)? changeField,
    TResult? Function(int doctorId)? send,
  }) {
    return send?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RateDoctorField field, dynamic value)? changeField,
    TResult Function(int doctorId)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeField value) changeField,
    required TResult Function(Send value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeField value)? changeField,
    TResult? Function(Send value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeField value)? changeField,
    TResult Function(Send value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class Send implements RateDoctorEvent {
  const factory Send(final int doctorId) = _$SendImpl;

  int get doctorId;
  @JsonKey(ignore: true)
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateDoctorState {
  RateDoctorBody? get body => throw _privateConstructorUsedError;
  LoadStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateDoctorStateCopyWith<RateDoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateDoctorStateCopyWith<$Res> {
  factory $RateDoctorStateCopyWith(
          RateDoctorState value, $Res Function(RateDoctorState) then) =
      _$RateDoctorStateCopyWithImpl<$Res, RateDoctorState>;
  @useResult
  $Res call({RateDoctorBody? body, LoadStatus status});
}

/// @nodoc
class _$RateDoctorStateCopyWithImpl<$Res, $Val extends RateDoctorState>
    implements $RateDoctorStateCopyWith<$Res> {
  _$RateDoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as RateDoctorBody?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateDoctorStateImplCopyWith<$Res>
    implements $RateDoctorStateCopyWith<$Res> {
  factory _$$RateDoctorStateImplCopyWith(_$RateDoctorStateImpl value,
          $Res Function(_$RateDoctorStateImpl) then) =
      __$$RateDoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RateDoctorBody? body, LoadStatus status});
}

/// @nodoc
class __$$RateDoctorStateImplCopyWithImpl<$Res>
    extends _$RateDoctorStateCopyWithImpl<$Res, _$RateDoctorStateImpl>
    implements _$$RateDoctorStateImplCopyWith<$Res> {
  __$$RateDoctorStateImplCopyWithImpl(
      _$RateDoctorStateImpl _value, $Res Function(_$RateDoctorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
    Object? status = null,
  }) {
    return _then(_$RateDoctorStateImpl(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as RateDoctorBody?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$RateDoctorStateImpl extends _RateDoctorState {
  _$RateDoctorStateImpl({this.body = null, this.status = LoadStatus.initial})
      : super._();

  @override
  @JsonKey()
  final RateDoctorBody? body;
  @override
  @JsonKey()
  final LoadStatus status;

  @override
  String toString() {
    return 'RateDoctorState(body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateDoctorStateImpl &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateDoctorStateImplCopyWith<_$RateDoctorStateImpl> get copyWith =>
      __$$RateDoctorStateImplCopyWithImpl<_$RateDoctorStateImpl>(
          this, _$identity);
}

abstract class _RateDoctorState extends RateDoctorState {
  factory _RateDoctorState(
      {final RateDoctorBody? body,
      final LoadStatus status}) = _$RateDoctorStateImpl;
  _RateDoctorState._() : super._();

  @override
  RateDoctorBody? get body;
  @override
  LoadStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$RateDoctorStateImplCopyWith<_$RateDoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
