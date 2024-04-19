// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEvent {
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? start, DateTime? end) getEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? start, DateTime? end)? getEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? start, DateTime? end)? getEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEvents value)? getEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
  @useResult
  $Res call({DateTime? start, DateTime? end});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventsImplCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$$GetEventsImplCopyWith(
          _$GetEventsImpl value, $Res Function(_$GetEventsImpl) then) =
      __$$GetEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? start, DateTime? end});
}

/// @nodoc
class __$$GetEventsImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$GetEventsImpl>
    implements _$$GetEventsImplCopyWith<$Res> {
  __$$GetEventsImplCopyWithImpl(
      _$GetEventsImpl _value, $Res Function(_$GetEventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$GetEventsImpl(
      freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$GetEventsImpl implements GetEvents {
  const _$GetEventsImpl(this.start, this.end);

  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString() {
    return 'CalendarEvent.getEvents(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsImplCopyWith<_$GetEventsImpl> get copyWith =>
      __$$GetEventsImplCopyWithImpl<_$GetEventsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? start, DateTime? end) getEvents,
  }) {
    return getEvents(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? start, DateTime? end)? getEvents,
  }) {
    return getEvents?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? start, DateTime? end)? getEvents,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEvents value)? getEvents,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class GetEvents implements CalendarEvent {
  const factory GetEvents(final DateTime? start, final DateTime? end) =
      _$GetEventsImpl;

  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$GetEventsImplCopyWith<_$GetEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  List<Meeting> get events => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  Meeting get formDataEvent => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  bool get failedToCreate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {List<Meeting> events,
      bool loading,
      bool success,
      Meeting formDataEvent,
      bool isValid,
      String format,
      bool failedToCreate});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? loading = null,
    Object? success = null,
    Object? formDataEvent = null,
    Object? isValid = null,
    Object? format = null,
    Object? failedToCreate = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Meeting>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      formDataEvent: null == formDataEvent
          ? _value.formDataEvent
          : formDataEvent // ignore: cast_nullable_to_non_nullable
              as Meeting,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      failedToCreate: null == failedToCreate
          ? _value.failedToCreate
          : failedToCreate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarStateImplCopyWith(
          _$CalendarStateImpl value, $Res Function(_$CalendarStateImpl) then) =
      __$$CalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Meeting> events,
      bool loading,
      bool success,
      Meeting formDataEvent,
      bool isValid,
      String format,
      bool failedToCreate});
}

/// @nodoc
class __$$CalendarStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateImpl>
    implements _$$CalendarStateImplCopyWith<$Res> {
  __$$CalendarStateImplCopyWithImpl(
      _$CalendarStateImpl _value, $Res Function(_$CalendarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? loading = null,
    Object? success = null,
    Object? formDataEvent = null,
    Object? isValid = null,
    Object? format = null,
    Object? failedToCreate = null,
  }) {
    return _then(_$CalendarStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Meeting>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      formDataEvent: null == formDataEvent
          ? _value.formDataEvent
          : formDataEvent // ignore: cast_nullable_to_non_nullable
              as Meeting,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      failedToCreate: null == failedToCreate
          ? _value.failedToCreate
          : failedToCreate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CalendarStateImpl extends _CalendarState {
  _$CalendarStateImpl(
      {required final List<Meeting> events,
      required this.loading,
      required this.success,
      required this.formDataEvent,
      required this.isValid,
      required this.format,
      required this.failedToCreate})
      : _events = events,
        super._();

  final List<Meeting> _events;
  @override
  List<Meeting> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final bool loading;
  @override
  final bool success;
  @override
  final Meeting formDataEvent;
  @override
  final bool isValid;
  @override
  final String format;
  @override
  final bool failedToCreate;

  @override
  String toString() {
    return 'CalendarState(events: $events, loading: $loading, success: $success, formDataEvent: $formDataEvent, isValid: $isValid, format: $format, failedToCreate: $failedToCreate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.formDataEvent, formDataEvent) ||
                other.formDataEvent == formDataEvent) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.failedToCreate, failedToCreate) ||
                other.failedToCreate == failedToCreate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      loading,
      success,
      formDataEvent,
      isValid,
      format,
      failedToCreate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      __$$CalendarStateImplCopyWithImpl<_$CalendarStateImpl>(this, _$identity);
}

abstract class _CalendarState extends CalendarState {
  factory _CalendarState(
      {required final List<Meeting> events,
      required final bool loading,
      required final bool success,
      required final Meeting formDataEvent,
      required final bool isValid,
      required final String format,
      required final bool failedToCreate}) = _$CalendarStateImpl;
  _CalendarState._() : super._();

  @override
  List<Meeting> get events;
  @override
  bool get loading;
  @override
  bool get success;
  @override
  Meeting get formDataEvent;
  @override
  bool get isValid;
  @override
  String get format;
  @override
  bool get failedToCreate;
  @override
  @JsonKey(ignore: true)
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
