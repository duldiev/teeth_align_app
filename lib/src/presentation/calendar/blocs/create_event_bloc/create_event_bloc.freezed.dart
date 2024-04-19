// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateEventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventEventCopyWith<$Res> {
  factory $CreateEventEventCopyWith(
          CreateEventEvent value, $Res Function(CreateEventEvent) then) =
      _$CreateEventEventCopyWithImpl<$Res, CreateEventEvent>;
}

/// @nodoc
class _$CreateEventEventCopyWithImpl<$Res, $Val extends CreateEventEvent>
    implements $CreateEventEventCopyWith<$Res> {
  _$CreateEventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetInitialImplCopyWith<$Res> {
  factory _$$SetInitialImplCopyWith(
          _$SetInitialImpl value, $Res Function(_$SetInitialImpl) then) =
      __$$SetInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Meeting? event});
}

/// @nodoc
class __$$SetInitialImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$SetInitialImpl>
    implements _$$SetInitialImplCopyWith<$Res> {
  __$$SetInitialImplCopyWithImpl(
      _$SetInitialImpl _value, $Res Function(_$SetInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$SetInitialImpl(
      freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Meeting?,
    ));
  }
}

/// @nodoc

class _$SetInitialImpl implements SetInitial {
  const _$SetInitialImpl(this.event);

  @override
  final Meeting? event;

  @override
  String toString() {
    return 'CreateEventEvent.setInitial(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInitialImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInitialImplCopyWith<_$SetInitialImpl> get copyWith =>
      __$$SetInitialImplCopyWithImpl<_$SetInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return setInitial(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return setInitial?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (setInitial != null) {
      return setInitial(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return setInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return setInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (setInitial != null) {
      return setInitial(this);
    }
    return orElse();
  }
}

abstract class SetInitial implements CreateEventEvent {
  const factory SetInitial(final Meeting? event) = _$SetInitialImpl;

  Meeting? get event;
  @JsonKey(ignore: true)
  _$$SetInitialImplCopyWith<_$SetInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNameImplCopyWith<$Res> {
  factory _$$ChangeNameImplCopyWith(
          _$ChangeNameImpl value, $Res Function(_$ChangeNameImpl) then) =
      __$$ChangeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ChangeNameImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$ChangeNameImpl>
    implements _$$ChangeNameImplCopyWith<$Res> {
  __$$ChangeNameImplCopyWithImpl(
      _$ChangeNameImpl _value, $Res Function(_$ChangeNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ChangeNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNameImpl implements ChangeName {
  const _$ChangeNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateEventEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameImplCopyWith<_$ChangeNameImpl> get copyWith =>
      __$$ChangeNameImplCopyWithImpl<_$ChangeNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class ChangeName implements CreateEventEvent {
  const factory ChangeName(final String name) = _$ChangeNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$ChangeNameImplCopyWith<_$ChangeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDescriptionImplCopyWith<$Res> {
  factory _$$ChangeDescriptionImplCopyWith(_$ChangeDescriptionImpl value,
          $Res Function(_$ChangeDescriptionImpl) then) =
      __$$ChangeDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$ChangeDescriptionImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$ChangeDescriptionImpl>
    implements _$$ChangeDescriptionImplCopyWith<$Res> {
  __$$ChangeDescriptionImplCopyWithImpl(_$ChangeDescriptionImpl _value,
      $Res Function(_$ChangeDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$ChangeDescriptionImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeDescriptionImpl implements ChangeDescription {
  const _$ChangeDescriptionImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'CreateEventEvent.changeDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDescriptionImplCopyWith<_$ChangeDescriptionImpl> get copyWith =>
      __$$ChangeDescriptionImplCopyWithImpl<_$ChangeDescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return changeDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return changeDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return changeDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return changeDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(this);
    }
    return orElse();
  }
}

abstract class ChangeDescription implements CreateEventEvent {
  const factory ChangeDescription(final String description) =
      _$ChangeDescriptionImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$ChangeDescriptionImplCopyWith<_$ChangeDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeColorImplCopyWith<$Res> {
  factory _$$ChangeColorImplCopyWith(
          _$ChangeColorImpl value, $Res Function(_$ChangeColorImpl) then) =
      __$$ChangeColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$ChangeColorImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$ChangeColorImpl>
    implements _$$ChangeColorImplCopyWith<$Res> {
  __$$ChangeColorImplCopyWithImpl(
      _$ChangeColorImpl _value, $Res Function(_$ChangeColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$ChangeColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangeColorImpl implements ChangeColor {
  const _$ChangeColorImpl(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'CreateEventEvent.changeColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      __$$ChangeColorImplCopyWithImpl<_$ChangeColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return changeColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return changeColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class ChangeColor implements CreateEventEvent {
  const factory ChangeColor(final Color color) = _$ChangeColorImpl;

  Color get color;
  @JsonKey(ignore: true)
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFromDateImplCopyWith<$Res> {
  factory _$$ChangeFromDateImplCopyWith(_$ChangeFromDateImpl value,
          $Res Function(_$ChangeFromDateImpl) then) =
      __$$ChangeFromDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime from});
}

/// @nodoc
class __$$ChangeFromDateImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$ChangeFromDateImpl>
    implements _$$ChangeFromDateImplCopyWith<$Res> {
  __$$ChangeFromDateImplCopyWithImpl(
      _$ChangeFromDateImpl _value, $Res Function(_$ChangeFromDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
  }) {
    return _then(_$ChangeFromDateImpl(
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeFromDateImpl implements ChangeFromDate {
  const _$ChangeFromDateImpl(this.from);

  @override
  final DateTime from;

  @override
  String toString() {
    return 'CreateEventEvent.changeFromDate(from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFromDateImpl &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFromDateImplCopyWith<_$ChangeFromDateImpl> get copyWith =>
      __$$ChangeFromDateImplCopyWithImpl<_$ChangeFromDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return changeFromDate(from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return changeFromDate?.call(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (changeFromDate != null) {
      return changeFromDate(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return changeFromDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return changeFromDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (changeFromDate != null) {
      return changeFromDate(this);
    }
    return orElse();
  }
}

abstract class ChangeFromDate implements CreateEventEvent {
  const factory ChangeFromDate(final DateTime from) = _$ChangeFromDateImpl;

  DateTime get from;
  @JsonKey(ignore: true)
  _$$ChangeFromDateImplCopyWith<_$ChangeFromDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeToDateImplCopyWith<$Res> {
  factory _$$ChangeToDateImplCopyWith(
          _$ChangeToDateImpl value, $Res Function(_$ChangeToDateImpl) then) =
      __$$ChangeToDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime to});
}

/// @nodoc
class __$$ChangeToDateImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$ChangeToDateImpl>
    implements _$$ChangeToDateImplCopyWith<$Res> {
  __$$ChangeToDateImplCopyWithImpl(
      _$ChangeToDateImpl _value, $Res Function(_$ChangeToDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
  }) {
    return _then(_$ChangeToDateImpl(
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeToDateImpl implements ChangeToDate {
  const _$ChangeToDateImpl(this.to);

  @override
  final DateTime to;

  @override
  String toString() {
    return 'CreateEventEvent.changeToDate(to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeToDateImpl &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeToDateImplCopyWith<_$ChangeToDateImpl> get copyWith =>
      __$$ChangeToDateImplCopyWithImpl<_$ChangeToDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return changeToDate(to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return changeToDate?.call(to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (changeToDate != null) {
      return changeToDate(to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return changeToDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return changeToDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (changeToDate != null) {
      return changeToDate(this);
    }
    return orElse();
  }
}

abstract class ChangeToDate implements CreateEventEvent {
  const factory ChangeToDate(final DateTime to) = _$ChangeToDateImpl;

  DateTime get to;
  @JsonKey(ignore: true)
  _$$ChangeToDateImplCopyWith<_$ChangeToDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateEventImplCopyWith<$Res> {
  factory _$$CreateEventImplCopyWith(
          _$CreateEventImpl value, $Res Function(_$CreateEventImpl) then) =
      __$$CreateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateEventImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$CreateEventImpl>
    implements _$$CreateEventImplCopyWith<$Res> {
  __$$CreateEventImplCopyWithImpl(
      _$CreateEventImpl _value, $Res Function(_$CreateEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateEventImpl implements CreateEvent {
  const _$CreateEventImpl();

  @override
  String toString() {
    return 'CreateEventEvent.createEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return createEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return createEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return createEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return createEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent(this);
    }
    return orElse();
  }
}

abstract class CreateEvent implements CreateEventEvent {
  const factory CreateEvent() = _$CreateEventImpl;
}

/// @nodoc
abstract class _$$EditEventImplCopyWith<$Res> {
  factory _$$EditEventImplCopyWith(
          _$EditEventImpl value, $Res Function(_$EditEventImpl) then) =
      __$$EditEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditEventImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$EditEventImpl>
    implements _$$EditEventImplCopyWith<$Res> {
  __$$EditEventImplCopyWithImpl(
      _$EditEventImpl _value, $Res Function(_$EditEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditEventImpl implements EditEvent {
  const _$EditEventImpl();

  @override
  String toString() {
    return 'CreateEventEvent.editEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return editEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return editEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return editEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return editEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(this);
    }
    return orElse();
  }
}

abstract class EditEvent implements CreateEventEvent {
  const factory EditEvent() = _$EditEventImpl;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DeleteEventImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl implements DeleteEvent {
  const _$DeleteEventImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'CreateEventEvent.deleteEvent(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return deleteEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return deleteEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements CreateEventEvent {
  const factory DeleteEvent(final int? id) = _$DeleteEventImpl;

  int? get id;
  @JsonKey(ignore: true)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsEditImplCopyWith<$Res> {
  factory _$$IsEditImplCopyWith(
          _$IsEditImpl value, $Res Function(_$IsEditImpl) then) =
      __$$IsEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEdit});
}

/// @nodoc
class __$$IsEditImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$IsEditImpl>
    implements _$$IsEditImplCopyWith<$Res> {
  __$$IsEditImplCopyWithImpl(
      _$IsEditImpl _value, $Res Function(_$IsEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEdit = null,
  }) {
    return _then(_$IsEditImpl(
      null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsEditImpl implements IsEdit {
  const _$IsEditImpl(this.isEdit);

  @override
  final bool isEdit;

  @override
  String toString() {
    return 'CreateEventEvent.isEdit(isEdit: $isEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsEditImpl &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsEditImplCopyWith<_$IsEditImpl> get copyWith =>
      __$$IsEditImplCopyWithImpl<_$IsEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Meeting? event) setInitial,
    required TResult Function(String name) changeName,
    required TResult Function(String description) changeDescription,
    required TResult Function(Color color) changeColor,
    required TResult Function(DateTime from) changeFromDate,
    required TResult Function(DateTime to) changeToDate,
    required TResult Function() createEvent,
    required TResult Function() editEvent,
    required TResult Function(int? id) deleteEvent,
    required TResult Function(bool isEdit) isEdit,
  }) {
    return isEdit(this.isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Meeting? event)? setInitial,
    TResult? Function(String name)? changeName,
    TResult? Function(String description)? changeDescription,
    TResult? Function(Color color)? changeColor,
    TResult? Function(DateTime from)? changeFromDate,
    TResult? Function(DateTime to)? changeToDate,
    TResult? Function()? createEvent,
    TResult? Function()? editEvent,
    TResult? Function(int? id)? deleteEvent,
    TResult? Function(bool isEdit)? isEdit,
  }) {
    return isEdit?.call(this.isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Meeting? event)? setInitial,
    TResult Function(String name)? changeName,
    TResult Function(String description)? changeDescription,
    TResult Function(Color color)? changeColor,
    TResult Function(DateTime from)? changeFromDate,
    TResult Function(DateTime to)? changeToDate,
    TResult Function()? createEvent,
    TResult Function()? editEvent,
    TResult Function(int? id)? deleteEvent,
    TResult Function(bool isEdit)? isEdit,
    required TResult orElse(),
  }) {
    if (isEdit != null) {
      return isEdit(this.isEdit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetInitial value) setInitial,
    required TResult Function(ChangeName value) changeName,
    required TResult Function(ChangeDescription value) changeDescription,
    required TResult Function(ChangeColor value) changeColor,
    required TResult Function(ChangeFromDate value) changeFromDate,
    required TResult Function(ChangeToDate value) changeToDate,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(IsEdit value) isEdit,
  }) {
    return isEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetInitial value)? setInitial,
    TResult? Function(ChangeName value)? changeName,
    TResult? Function(ChangeDescription value)? changeDescription,
    TResult? Function(ChangeColor value)? changeColor,
    TResult? Function(ChangeFromDate value)? changeFromDate,
    TResult? Function(ChangeToDate value)? changeToDate,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(EditEvent value)? editEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(IsEdit value)? isEdit,
  }) {
    return isEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetInitial value)? setInitial,
    TResult Function(ChangeName value)? changeName,
    TResult Function(ChangeDescription value)? changeDescription,
    TResult Function(ChangeColor value)? changeColor,
    TResult Function(ChangeFromDate value)? changeFromDate,
    TResult Function(ChangeToDate value)? changeToDate,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(EditEvent value)? editEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(IsEdit value)? isEdit,
    required TResult orElse(),
  }) {
    if (isEdit != null) {
      return isEdit(this);
    }
    return orElse();
  }
}

abstract class IsEdit implements CreateEventEvent {
  const factory IsEdit(final bool isEdit) = _$IsEditImpl;

  bool get isEdit;
  @JsonKey(ignore: true)
  _$$IsEditImplCopyWith<_$IsEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateEventState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  Meeting get formDataEvent => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateEventStateCopyWith<CreateEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventStateCopyWith<$Res> {
  factory $CreateEventStateCopyWith(
          CreateEventState value, $Res Function(CreateEventState) then) =
      _$CreateEventStateCopyWithImpl<$Res, CreateEventState>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      Meeting formDataEvent,
      bool isValid,
      bool failed,
      bool isEdit});
}

/// @nodoc
class _$CreateEventStateCopyWithImpl<$Res, $Val extends CreateEventState>
    implements $CreateEventStateCopyWith<$Res> {
  _$CreateEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? formDataEvent = null,
    Object? isValid = null,
    Object? failed = null,
    Object? isEdit = null,
  }) {
    return _then(_value.copyWith(
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
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEventStateImplCopyWith<$Res>
    implements $CreateEventStateCopyWith<$Res> {
  factory _$$CreateEventStateImplCopyWith(_$CreateEventStateImpl value,
          $Res Function(_$CreateEventStateImpl) then) =
      __$$CreateEventStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      Meeting formDataEvent,
      bool isValid,
      bool failed,
      bool isEdit});
}

/// @nodoc
class __$$CreateEventStateImplCopyWithImpl<$Res>
    extends _$CreateEventStateCopyWithImpl<$Res, _$CreateEventStateImpl>
    implements _$$CreateEventStateImplCopyWith<$Res> {
  __$$CreateEventStateImplCopyWithImpl(_$CreateEventStateImpl _value,
      $Res Function(_$CreateEventStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? formDataEvent = null,
    Object? isValid = null,
    Object? failed = null,
    Object? isEdit = null,
  }) {
    return _then(_$CreateEventStateImpl(
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
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateEventStateImpl extends _CreateEventState {
  _$CreateEventStateImpl(
      {required this.loading,
      required this.success,
      required this.formDataEvent,
      required this.isValid,
      required this.failed,
      required this.isEdit})
      : super._();

  @override
  final bool loading;
  @override
  final bool success;
  @override
  final Meeting formDataEvent;
  @override
  final bool isValid;
  @override
  final bool failed;
  @override
  final bool isEdit;

  @override
  String toString() {
    return 'CreateEventState(loading: $loading, success: $success, formDataEvent: $formDataEvent, isValid: $isValid, failed: $failed, isEdit: $isEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.formDataEvent, formDataEvent) ||
                other.formDataEvent == formDataEvent) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, success, formDataEvent, isValid, failed, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventStateImplCopyWith<_$CreateEventStateImpl> get copyWith =>
      __$$CreateEventStateImplCopyWithImpl<_$CreateEventStateImpl>(
          this, _$identity);
}

abstract class _CreateEventState extends CreateEventState {
  factory _CreateEventState(
      {required final bool loading,
      required final bool success,
      required final Meeting formDataEvent,
      required final bool isValid,
      required final bool failed,
      required final bool isEdit}) = _$CreateEventStateImpl;
  _CreateEventState._() : super._();

  @override
  bool get loading;
  @override
  bool get success;
  @override
  Meeting get formDataEvent;
  @override
  bool get isValid;
  @override
  bool get failed;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$CreateEventStateImplCopyWith<_$CreateEventStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
