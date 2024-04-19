// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_date_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarDateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonth,
    required TResult Function() prevMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonth,
    TResult? Function()? prevMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonth,
    TResult Function()? prevMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextMonth value) nextMonth,
    required TResult Function(PrevMonth value) prevMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextMonth value)? nextMonth,
    TResult? Function(PrevMonth value)? prevMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextMonth value)? nextMonth,
    TResult Function(PrevMonth value)? prevMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDateEventCopyWith<$Res> {
  factory $CalendarDateEventCopyWith(
          CalendarDateEvent value, $Res Function(CalendarDateEvent) then) =
      _$CalendarDateEventCopyWithImpl<$Res, CalendarDateEvent>;
}

/// @nodoc
class _$CalendarDateEventCopyWithImpl<$Res, $Val extends CalendarDateEvent>
    implements $CalendarDateEventCopyWith<$Res> {
  _$CalendarDateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NextMonthImplCopyWith<$Res> {
  factory _$$NextMonthImplCopyWith(
          _$NextMonthImpl value, $Res Function(_$NextMonthImpl) then) =
      __$$NextMonthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextMonthImplCopyWithImpl<$Res>
    extends _$CalendarDateEventCopyWithImpl<$Res, _$NextMonthImpl>
    implements _$$NextMonthImplCopyWith<$Res> {
  __$$NextMonthImplCopyWithImpl(
      _$NextMonthImpl _value, $Res Function(_$NextMonthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextMonthImpl implements NextMonth {
  const _$NextMonthImpl();

  @override
  String toString() {
    return 'CalendarDateEvent.nextMonth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextMonthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonth,
    required TResult Function() prevMonth,
  }) {
    return nextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonth,
    TResult? Function()? prevMonth,
  }) {
    return nextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonth,
    TResult Function()? prevMonth,
    required TResult orElse(),
  }) {
    if (nextMonth != null) {
      return nextMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextMonth value) nextMonth,
    required TResult Function(PrevMonth value) prevMonth,
  }) {
    return nextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextMonth value)? nextMonth,
    TResult? Function(PrevMonth value)? prevMonth,
  }) {
    return nextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextMonth value)? nextMonth,
    TResult Function(PrevMonth value)? prevMonth,
    required TResult orElse(),
  }) {
    if (nextMonth != null) {
      return nextMonth(this);
    }
    return orElse();
  }
}

abstract class NextMonth implements CalendarDateEvent {
  const factory NextMonth() = _$NextMonthImpl;
}

/// @nodoc
abstract class _$$PrevMonthImplCopyWith<$Res> {
  factory _$$PrevMonthImplCopyWith(
          _$PrevMonthImpl value, $Res Function(_$PrevMonthImpl) then) =
      __$$PrevMonthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrevMonthImplCopyWithImpl<$Res>
    extends _$CalendarDateEventCopyWithImpl<$Res, _$PrevMonthImpl>
    implements _$$PrevMonthImplCopyWith<$Res> {
  __$$PrevMonthImplCopyWithImpl(
      _$PrevMonthImpl _value, $Res Function(_$PrevMonthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PrevMonthImpl implements PrevMonth {
  const _$PrevMonthImpl();

  @override
  String toString() {
    return 'CalendarDateEvent.prevMonth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrevMonthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextMonth,
    required TResult Function() prevMonth,
  }) {
    return prevMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextMonth,
    TResult? Function()? prevMonth,
  }) {
    return prevMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextMonth,
    TResult Function()? prevMonth,
    required TResult orElse(),
  }) {
    if (prevMonth != null) {
      return prevMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextMonth value) nextMonth,
    required TResult Function(PrevMonth value) prevMonth,
  }) {
    return prevMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextMonth value)? nextMonth,
    TResult? Function(PrevMonth value)? prevMonth,
  }) {
    return prevMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextMonth value)? nextMonth,
    TResult Function(PrevMonth value)? prevMonth,
    required TResult orElse(),
  }) {
    if (prevMonth != null) {
      return prevMonth(this);
    }
    return orElse();
  }
}

abstract class PrevMonth implements CalendarDateEvent {
  const factory PrevMonth() = _$PrevMonthImpl;
}

/// @nodoc
mixin _$CalendarDateState {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarDateStateCopyWith<CalendarDateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDateStateCopyWith<$Res> {
  factory $CalendarDateStateCopyWith(
          CalendarDateState value, $Res Function(CalendarDateState) then) =
      _$CalendarDateStateCopyWithImpl<$Res, CalendarDateState>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class _$CalendarDateStateCopyWithImpl<$Res, $Val extends CalendarDateState>
    implements $CalendarDateStateCopyWith<$Res> {
  _$CalendarDateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarDateStateImplCopyWith<$Res>
    implements $CalendarDateStateCopyWith<$Res> {
  factory _$$CalendarDateStateImplCopyWith(_$CalendarDateStateImpl value,
          $Res Function(_$CalendarDateStateImpl) then) =
      __$$CalendarDateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$CalendarDateStateImplCopyWithImpl<$Res>
    extends _$CalendarDateStateCopyWithImpl<$Res, _$CalendarDateStateImpl>
    implements _$$CalendarDateStateImplCopyWith<$Res> {
  __$$CalendarDateStateImplCopyWithImpl(_$CalendarDateStateImpl _value,
      $Res Function(_$CalendarDateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$CalendarDateStateImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CalendarDateStateImpl extends _CalendarDateState {
  _$CalendarDateStateImpl({required this.start, required this.end}) : super._();

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'CalendarDateState(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarDateStateImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarDateStateImplCopyWith<_$CalendarDateStateImpl> get copyWith =>
      __$$CalendarDateStateImplCopyWithImpl<_$CalendarDateStateImpl>(
          this, _$identity);
}

abstract class _CalendarDateState extends CalendarDateState {
  factory _CalendarDateState(
      {required final DateTime start,
      required final DateTime end}) = _$CalendarDateStateImpl;
  _CalendarDateState._() : super._();

  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$CalendarDateStateImplCopyWith<_$CalendarDateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
