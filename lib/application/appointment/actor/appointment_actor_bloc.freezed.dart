// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'appointment_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppointmentActorEventTearOff {
  const _$AppointmentActorEventTearOff();

  _CancelAppointment cancelAppointment(Appointment appointment) {
    return _CancelAppointment(
      appointment,
    );
  }
}

/// @nodoc
const $AppointmentActorEvent = _$AppointmentActorEventTearOff();

/// @nodoc
mixin _$AppointmentActorEvent {
  Appointment get appointment => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? cancelAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelAppointment value) cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentActorEventCopyWith<AppointmentActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentActorEventCopyWith<$Res> {
  factory $AppointmentActorEventCopyWith(AppointmentActorEvent value,
          $Res Function(AppointmentActorEvent) then) =
      _$AppointmentActorEventCopyWithImpl<$Res>;
  $Res call({Appointment appointment});
}

/// @nodoc
class _$AppointmentActorEventCopyWithImpl<$Res>
    implements $AppointmentActorEventCopyWith<$Res> {
  _$AppointmentActorEventCopyWithImpl(this._value, this._then);

  final AppointmentActorEvent _value;
  // ignore: unused_field
  final $Res Function(AppointmentActorEvent) _then;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_value.copyWith(
      appointment: appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }
}

/// @nodoc
abstract class _$CancelAppointmentCopyWith<$Res>
    implements $AppointmentActorEventCopyWith<$Res> {
  factory _$CancelAppointmentCopyWith(
          _CancelAppointment value, $Res Function(_CancelAppointment) then) =
      __$CancelAppointmentCopyWithImpl<$Res>;
  @override
  $Res call({Appointment appointment});
}

/// @nodoc
class __$CancelAppointmentCopyWithImpl<$Res>
    extends _$AppointmentActorEventCopyWithImpl<$Res>
    implements _$CancelAppointmentCopyWith<$Res> {
  __$CancelAppointmentCopyWithImpl(
      _CancelAppointment _value, $Res Function(_CancelAppointment) _then)
      : super(_value, (v) => _then(v as _CancelAppointment));

  @override
  _CancelAppointment get _value => super._value as _CancelAppointment;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_CancelAppointment(
      appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }
}

/// @nodoc

class _$_CancelAppointment implements _CancelAppointment {
  const _$_CancelAppointment(this.appointment);

  @override
  final Appointment appointment;

  @override
  String toString() {
    return 'AppointmentActorEvent.cancelAppointment(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelAppointment &&
            (identical(other.appointment, appointment) ||
                const DeepCollectionEquality()
                    .equals(other.appointment, appointment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appointment);

  @JsonKey(ignore: true)
  @override
  _$CancelAppointmentCopyWith<_CancelAppointment> get copyWith =>
      __$CancelAppointmentCopyWithImpl<_CancelAppointment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) cancelAppointment,
  }) {
    return cancelAppointment(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelAppointment value) cancelAppointment,
  }) {
    return cancelAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(this);
    }
    return orElse();
  }
}

abstract class _CancelAppointment implements AppointmentActorEvent {
  const factory _CancelAppointment(Appointment appointment) =
      _$_CancelAppointment;

  @override
  Appointment get appointment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CancelAppointmentCopyWith<_CancelAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppointmentActorStateTearOff {
  const _$AppointmentActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _ActionSuccess actionSuccess() {
    return const _ActionSuccess();
  }

  _ActionFailed actionFailed(ValueFailure failure) {
    return _ActionFailed(
      failure,
    );
  }
}

/// @nodoc
const $AppointmentActorState = _$AppointmentActorStateTearOff();

/// @nodoc
mixin _$AppointmentActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ValueFailure failure) actionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ValueFailure failure)? actionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentActorStateCopyWith<$Res> {
  factory $AppointmentActorStateCopyWith(AppointmentActorState value,
          $Res Function(AppointmentActorState) then) =
      _$AppointmentActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppointmentActorStateCopyWithImpl<$Res>
    implements $AppointmentActorStateCopyWith<$Res> {
  _$AppointmentActorStateCopyWithImpl(this._value, this._then);

  final AppointmentActorState _value;
  // ignore: unused_field
  final $Res Function(AppointmentActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AppointmentActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppointmentActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ValueFailure failure) actionFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ValueFailure failure)? actionFailed,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppointmentActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$AppointmentActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'AppointmentActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ValueFailure failure) actionFailed,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ValueFailure failure)? actionFailed,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements AppointmentActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$ActionSuccessCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(
          _ActionSuccess value, $Res Function(_ActionSuccess) then) =
      __$ActionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    extends _$AppointmentActorStateCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(
      _ActionSuccess _value, $Res Function(_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _ActionSuccess));

  @override
  _ActionSuccess get _value => super._value as _ActionSuccess;
}

/// @nodoc

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'AppointmentActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ValueFailure failure) actionFailed,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ValueFailure failure)? actionFailed,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements AppointmentActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}

/// @nodoc
abstract class _$ActionFailedCopyWith<$Res> {
  factory _$ActionFailedCopyWith(
          _ActionFailed value, $Res Function(_ActionFailed) then) =
      __$ActionFailedCopyWithImpl<$Res>;
  $Res call({ValueFailure failure});

  $ValueFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ActionFailedCopyWithImpl<$Res>
    extends _$AppointmentActorStateCopyWithImpl<$Res>
    implements _$ActionFailedCopyWith<$Res> {
  __$ActionFailedCopyWithImpl(
      _ActionFailed _value, $Res Function(_ActionFailed) _then)
      : super(_value, (v) => _then(v as _ActionFailed));

  @override
  _ActionFailed get _value => super._value as _ActionFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_ActionFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValueFailure,
    ));
  }

  @override
  $ValueFailureCopyWith<$Res> get failure {
    return $ValueFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailed implements _ActionFailed {
  const _$_ActionFailed(this.failure);

  @override
  final ValueFailure failure;

  @override
  String toString() {
    return 'AppointmentActorState.actionFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ActionFailedCopyWith<_ActionFailed> get copyWith =>
      __$ActionFailedCopyWithImpl<_ActionFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ValueFailure failure) actionFailed,
  }) {
    return actionFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ValueFailure failure)? actionFailed,
    required TResult orElse(),
  }) {
    if (actionFailed != null) {
      return actionFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailed value) actionFailed,
  }) {
    return actionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailed value)? actionFailed,
    required TResult orElse(),
  }) {
    if (actionFailed != null) {
      return actionFailed(this);
    }
    return orElse();
  }
}

abstract class _ActionFailed implements AppointmentActorState {
  const factory _ActionFailed(ValueFailure failure) = _$_ActionFailed;

  ValueFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActionFailedCopyWith<_ActionFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
