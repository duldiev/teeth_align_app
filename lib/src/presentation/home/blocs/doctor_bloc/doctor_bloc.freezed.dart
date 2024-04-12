// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMentors,
    required TResult Function() getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMentors,
    TResult? Function()? getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMentors,
    TResult Function()? getPatients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMentors value) getMentors,
    required TResult Function(GetPatients value) getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMentors value)? getMentors,
    TResult? Function(GetPatients value)? getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMentors value)? getMentors,
    TResult Function(GetPatients value)? getPatients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res, DoctorEvent>;
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res, $Val extends DoctorEvent>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMentorsImplCopyWith<$Res> {
  factory _$$GetMentorsImplCopyWith(
          _$GetMentorsImpl value, $Res Function(_$GetMentorsImpl) then) =
      __$$GetMentorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMentorsImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$GetMentorsImpl>
    implements _$$GetMentorsImplCopyWith<$Res> {
  __$$GetMentorsImplCopyWithImpl(
      _$GetMentorsImpl _value, $Res Function(_$GetMentorsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMentorsImpl implements GetMentors {
  const _$GetMentorsImpl();

  @override
  String toString() {
    return 'DoctorEvent.getMentors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMentorsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMentors,
    required TResult Function() getPatients,
  }) {
    return getMentors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMentors,
    TResult? Function()? getPatients,
  }) {
    return getMentors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMentors,
    TResult Function()? getPatients,
    required TResult orElse(),
  }) {
    if (getMentors != null) {
      return getMentors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMentors value) getMentors,
    required TResult Function(GetPatients value) getPatients,
  }) {
    return getMentors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMentors value)? getMentors,
    TResult? Function(GetPatients value)? getPatients,
  }) {
    return getMentors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMentors value)? getMentors,
    TResult Function(GetPatients value)? getPatients,
    required TResult orElse(),
  }) {
    if (getMentors != null) {
      return getMentors(this);
    }
    return orElse();
  }
}

abstract class GetMentors implements DoctorEvent {
  const factory GetMentors() = _$GetMentorsImpl;
}

/// @nodoc
abstract class _$$GetPatientsImplCopyWith<$Res> {
  factory _$$GetPatientsImplCopyWith(
          _$GetPatientsImpl value, $Res Function(_$GetPatientsImpl) then) =
      __$$GetPatientsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPatientsImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$GetPatientsImpl>
    implements _$$GetPatientsImplCopyWith<$Res> {
  __$$GetPatientsImplCopyWithImpl(
      _$GetPatientsImpl _value, $Res Function(_$GetPatientsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPatientsImpl implements GetPatients {
  const _$GetPatientsImpl();

  @override
  String toString() {
    return 'DoctorEvent.getPatients()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPatientsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMentors,
    required TResult Function() getPatients,
  }) {
    return getPatients();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMentors,
    TResult? Function()? getPatients,
  }) {
    return getPatients?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMentors,
    TResult Function()? getPatients,
    required TResult orElse(),
  }) {
    if (getPatients != null) {
      return getPatients();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMentors value) getMentors,
    required TResult Function(GetPatients value) getPatients,
  }) {
    return getPatients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMentors value)? getMentors,
    TResult? Function(GetPatients value)? getPatients,
  }) {
    return getPatients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMentors value)? getMentors,
    TResult Function(GetPatients value)? getPatients,
    required TResult orElse(),
  }) {
    if (getPatients != null) {
      return getPatients(this);
    }
    return orElse();
  }
}

abstract class GetPatients implements DoctorEvent {
  const factory GetPatients() = _$GetPatientsImpl;
}

/// @nodoc
mixin _$DoctorState {
  List<MentorEntity> get mentors => throw _privateConstructorUsedError;
  LoadStatus get mentorsStatus => throw _privateConstructorUsedError;
  List<PatientEntity> get patients => throw _privateConstructorUsedError;
  LoadStatus get patientsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorStateCopyWith<DoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
  @useResult
  $Res call(
      {List<MentorEntity> mentors,
      LoadStatus mentorsStatus,
      List<PatientEntity> patients,
      LoadStatus patientsStatus});
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentors = null,
    Object? mentorsStatus = null,
    Object? patients = null,
    Object? patientsStatus = null,
  }) {
    return _then(_value.copyWith(
      mentors: null == mentors
          ? _value.mentors
          : mentors // ignore: cast_nullable_to_non_nullable
              as List<MentorEntity>,
      mentorsStatus: null == mentorsStatus
          ? _value.mentorsStatus
          : mentorsStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<PatientEntity>,
      patientsStatus: null == patientsStatus
          ? _value.patientsStatus
          : patientsStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorStateImplCopyWith<$Res>
    implements $DoctorStateCopyWith<$Res> {
  factory _$$DoctorStateImplCopyWith(
          _$DoctorStateImpl value, $Res Function(_$DoctorStateImpl) then) =
      __$$DoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MentorEntity> mentors,
      LoadStatus mentorsStatus,
      List<PatientEntity> patients,
      LoadStatus patientsStatus});
}

/// @nodoc
class __$$DoctorStateImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$DoctorStateImpl>
    implements _$$DoctorStateImplCopyWith<$Res> {
  __$$DoctorStateImplCopyWithImpl(
      _$DoctorStateImpl _value, $Res Function(_$DoctorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentors = null,
    Object? mentorsStatus = null,
    Object? patients = null,
    Object? patientsStatus = null,
  }) {
    return _then(_$DoctorStateImpl(
      mentors: null == mentors
          ? _value._mentors
          : mentors // ignore: cast_nullable_to_non_nullable
              as List<MentorEntity>,
      mentorsStatus: null == mentorsStatus
          ? _value.mentorsStatus
          : mentorsStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<PatientEntity>,
      patientsStatus: null == patientsStatus
          ? _value.patientsStatus
          : patientsStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$DoctorStateImpl extends _DoctorState {
  _$DoctorStateImpl(
      {final List<MentorEntity> mentors = const [],
      this.mentorsStatus = LoadStatus.initial,
      final List<PatientEntity> patients = const [],
      this.patientsStatus = LoadStatus.initial})
      : _mentors = mentors,
        _patients = patients,
        super._();

  final List<MentorEntity> _mentors;
  @override
  @JsonKey()
  List<MentorEntity> get mentors {
    if (_mentors is EqualUnmodifiableListView) return _mentors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentors);
  }

  @override
  @JsonKey()
  final LoadStatus mentorsStatus;
  final List<PatientEntity> _patients;
  @override
  @JsonKey()
  List<PatientEntity> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  @JsonKey()
  final LoadStatus patientsStatus;

  @override
  String toString() {
    return 'DoctorState(mentors: $mentors, mentorsStatus: $mentorsStatus, patients: $patients, patientsStatus: $patientsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorStateImpl &&
            const DeepCollectionEquality().equals(other._mentors, _mentors) &&
            (identical(other.mentorsStatus, mentorsStatus) ||
                other.mentorsStatus == mentorsStatus) &&
            const DeepCollectionEquality().equals(other._patients, _patients) &&
            (identical(other.patientsStatus, patientsStatus) ||
                other.patientsStatus == patientsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mentors),
      mentorsStatus,
      const DeepCollectionEquality().hash(_patients),
      patientsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorStateImplCopyWith<_$DoctorStateImpl> get copyWith =>
      __$$DoctorStateImplCopyWithImpl<_$DoctorStateImpl>(this, _$identity);
}

abstract class _DoctorState extends DoctorState {
  factory _DoctorState(
      {final List<MentorEntity> mentors,
      final LoadStatus mentorsStatus,
      final List<PatientEntity> patients,
      final LoadStatus patientsStatus}) = _$DoctorStateImpl;
  _DoctorState._() : super._();

  @override
  List<MentorEntity> get mentors;
  @override
  LoadStatus get mentorsStatus;
  @override
  List<PatientEntity> get patients;
  @override
  LoadStatus get patientsStatus;
  @override
  @JsonKey(ignore: true)
  _$$DoctorStateImplCopyWith<_$DoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
