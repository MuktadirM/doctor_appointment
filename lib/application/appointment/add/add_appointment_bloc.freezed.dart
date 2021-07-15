// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddAppointmentEventTearOff {
  const _$AddAppointmentEventTearOff();

  _AddAppointment addAppointment(Appointment appointment) {
    return _AddAppointment(
      appointment,
    );
  }
}

/// @nodoc
const $AddAppointmentEvent = _$AddAppointmentEventTearOff();

/// @nodoc
mixin _$AddAppointmentEvent {
  Appointment get appointment => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) addAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? addAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAppointment value) addAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAppointment value)? addAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAppointmentEventCopyWith<AddAppointmentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAppointmentEventCopyWith<$Res> {
  factory $AddAppointmentEventCopyWith(
          AddAppointmentEvent value, $Res Function(AddAppointmentEvent) then) =
      _$AddAppointmentEventCopyWithImpl<$Res>;
  $Res call({Appointment appointment});
}

/// @nodoc
class _$AddAppointmentEventCopyWithImpl<$Res>
    implements $AddAppointmentEventCopyWith<$Res> {
  _$AddAppointmentEventCopyWithImpl(this._value, this._then);

  final AddAppointmentEvent _value;
  // ignore: unused_field
  final $Res Function(AddAppointmentEvent) _then;

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
abstract class _$AddAppointmentCopyWith<$Res>
    implements $AddAppointmentEventCopyWith<$Res> {
  factory _$AddAppointmentCopyWith(
          _AddAppointment value, $Res Function(_AddAppointment) then) =
      __$AddAppointmentCopyWithImpl<$Res>;
  @override
  $Res call({Appointment appointment});
}

/// @nodoc
class __$AddAppointmentCopyWithImpl<$Res>
    extends _$AddAppointmentEventCopyWithImpl<$Res>
    implements _$AddAppointmentCopyWith<$Res> {
  __$AddAppointmentCopyWithImpl(
      _AddAppointment _value, $Res Function(_AddAppointment) _then)
      : super(_value, (v) => _then(v as _AddAppointment));

  @override
  _AddAppointment get _value => super._value as _AddAppointment;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_AddAppointment(
      appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }
}

/// @nodoc

class _$_AddAppointment implements _AddAppointment {
  const _$_AddAppointment(this.appointment);

  @override
  final Appointment appointment;

  @override
  String toString() {
    return 'AddAppointmentEvent.addAppointment(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAppointment &&
            (identical(other.appointment, appointment) ||
                const DeepCollectionEquality()
                    .equals(other.appointment, appointment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appointment);

  @JsonKey(ignore: true)
  @override
  _$AddAppointmentCopyWith<_AddAppointment> get copyWith =>
      __$AddAppointmentCopyWithImpl<_AddAppointment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) addAppointment,
  }) {
    return addAppointment(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? addAppointment,
    required TResult orElse(),
  }) {
    if (addAppointment != null) {
      return addAppointment(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAppointment value) addAppointment,
  }) {
    return addAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAppointment value)? addAppointment,
    required TResult orElse(),
  }) {
    if (addAppointment != null) {
      return addAppointment(this);
    }
    return orElse();
  }
}

abstract class _AddAppointment implements AddAppointmentEvent {
  const factory _AddAppointment(Appointment appointment) = _$_AddAppointment;

  @override
  Appointment get appointment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddAppointmentCopyWith<_AddAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddAppointmentStateTearOff {
  const _$AddAppointmentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _AddInProgress addInProgress() {
    return const _AddInProgress();
  }

  _AddSuccess addSuccess() {
    return const _AddSuccess();
  }

  _FailToAdd failToAdd(ValueFailure failure) {
    return _FailToAdd(
      failure,
    );
  }
}

/// @nodoc
const $AddAppointmentState = _$AddAppointmentStateTearOff();

/// @nodoc
mixin _$AddAppointmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(ValueFailure failure) failToAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(ValueFailure failure)? failToAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_FailToAdd value) failToAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_FailToAdd value)? failToAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAppointmentStateCopyWith<$Res> {
  factory $AddAppointmentStateCopyWith(
          AddAppointmentState value, $Res Function(AddAppointmentState) then) =
      _$AddAppointmentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAppointmentStateCopyWithImpl<$Res>
    implements $AddAppointmentStateCopyWith<$Res> {
  _$AddAppointmentStateCopyWithImpl(this._value, this._then);

  final AddAppointmentState _value;
  // ignore: unused_field
  final $Res Function(AddAppointmentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AddAppointmentStateCopyWithImpl<$Res>
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
    return 'AddAppointmentState.initial()';
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
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(ValueFailure failure) failToAdd,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(ValueFailure failure)? failToAdd,
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
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_FailToAdd value) failToAdd,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_FailToAdd value)? failToAdd,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddAppointmentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AddInProgressCopyWith<$Res> {
  factory _$AddInProgressCopyWith(
          _AddInProgress value, $Res Function(_AddInProgress) then) =
      __$AddInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddInProgressCopyWithImpl<$Res>
    extends _$AddAppointmentStateCopyWithImpl<$Res>
    implements _$AddInProgressCopyWith<$Res> {
  __$AddInProgressCopyWithImpl(
      _AddInProgress _value, $Res Function(_AddInProgress) _then)
      : super(_value, (v) => _then(v as _AddInProgress));

  @override
  _AddInProgress get _value => super._value as _AddInProgress;
}

/// @nodoc

class _$_AddInProgress implements _AddInProgress {
  const _$_AddInProgress();

  @override
  String toString() {
    return 'AddAppointmentState.addInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(ValueFailure failure) failToAdd,
  }) {
    return addInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(ValueFailure failure)? failToAdd,
    required TResult orElse(),
  }) {
    if (addInProgress != null) {
      return addInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_FailToAdd value) failToAdd,
  }) {
    return addInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_FailToAdd value)? failToAdd,
    required TResult orElse(),
  }) {
    if (addInProgress != null) {
      return addInProgress(this);
    }
    return orElse();
  }
}

abstract class _AddInProgress implements AddAppointmentState {
  const factory _AddInProgress() = _$_AddInProgress;
}

/// @nodoc
abstract class _$AddSuccessCopyWith<$Res> {
  factory _$AddSuccessCopyWith(
          _AddSuccess value, $Res Function(_AddSuccess) then) =
      __$AddSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddSuccessCopyWithImpl<$Res>
    extends _$AddAppointmentStateCopyWithImpl<$Res>
    implements _$AddSuccessCopyWith<$Res> {
  __$AddSuccessCopyWithImpl(
      _AddSuccess _value, $Res Function(_AddSuccess) _then)
      : super(_value, (v) => _then(v as _AddSuccess));

  @override
  _AddSuccess get _value => super._value as _AddSuccess;
}

/// @nodoc

class _$_AddSuccess implements _AddSuccess {
  const _$_AddSuccess();

  @override
  String toString() {
    return 'AddAppointmentState.addSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(ValueFailure failure) failToAdd,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(ValueFailure failure)? failToAdd,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_FailToAdd value) failToAdd,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_FailToAdd value)? failToAdd,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements AddAppointmentState {
  const factory _AddSuccess() = _$_AddSuccess;
}

/// @nodoc
abstract class _$FailToAddCopyWith<$Res> {
  factory _$FailToAddCopyWith(
          _FailToAdd value, $Res Function(_FailToAdd) then) =
      __$FailToAddCopyWithImpl<$Res>;
  $Res call({ValueFailure failure});

  $ValueFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailToAddCopyWithImpl<$Res>
    extends _$AddAppointmentStateCopyWithImpl<$Res>
    implements _$FailToAddCopyWith<$Res> {
  __$FailToAddCopyWithImpl(_FailToAdd _value, $Res Function(_FailToAdd) _then)
      : super(_value, (v) => _then(v as _FailToAdd));

  @override
  _FailToAdd get _value => super._value as _FailToAdd;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_FailToAdd(
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

class _$_FailToAdd implements _FailToAdd {
  const _$_FailToAdd(this.failure);

  @override
  final ValueFailure failure;

  @override
  String toString() {
    return 'AddAppointmentState.failToAdd(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailToAdd &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailToAddCopyWith<_FailToAdd> get copyWith =>
      __$FailToAddCopyWithImpl<_FailToAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(ValueFailure failure) failToAdd,
  }) {
    return failToAdd(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(ValueFailure failure)? failToAdd,
    required TResult orElse(),
  }) {
    if (failToAdd != null) {
      return failToAdd(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_FailToAdd value) failToAdd,
  }) {
    return failToAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_FailToAdd value)? failToAdd,
    required TResult orElse(),
  }) {
    if (failToAdd != null) {
      return failToAdd(this);
    }
    return orElse();
  }
}

abstract class _FailToAdd implements AddAppointmentState {
  const factory _FailToAdd(ValueFailure failure) = _$_FailToAdd;

  ValueFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailToAddCopyWith<_FailToAdd> get copyWith =>
      throw _privateConstructorUsedError;
}
