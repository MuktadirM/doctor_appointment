// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppointmentEventTearOff {
  const _$AppointmentEventTearOff();

  _watchAllAppointmentStarted watchAllAppointmentStarted(String? filter) {
    return _watchAllAppointmentStarted(
      filter,
    );
  }

  _AppointmentItemReceived appointmentItemReceived(
      Either<ValueFailure, List<Appointment>> failureOrItems) {
    return _AppointmentItemReceived(
      failureOrItems,
    );
  }
}

/// @nodoc
const $AppointmentEvent = _$AppointmentEventTearOff();

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllAppointmentStarted,
    required TResult Function(
            Either<ValueFailure, List<Appointment>> failureOrItems)
        appointmentItemReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllAppointmentStarted,
    TResult Function(Either<ValueFailure, List<Appointment>> failureOrItems)?
        appointmentItemReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllAppointmentStarted value)
        watchAllAppointmentStarted,
    required TResult Function(_AppointmentItemReceived value)
        appointmentItemReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllAppointmentStarted value)?
        watchAllAppointmentStarted,
    TResult Function(_AppointmentItemReceived value)? appointmentItemReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  final AppointmentEvent _value;
  // ignore: unused_field
  final $Res Function(AppointmentEvent) _then;
}

/// @nodoc
abstract class _$watchAllAppointmentStartedCopyWith<$Res> {
  factory _$watchAllAppointmentStartedCopyWith(
          _watchAllAppointmentStarted value,
          $Res Function(_watchAllAppointmentStarted) then) =
      __$watchAllAppointmentStartedCopyWithImpl<$Res>;
  $Res call({String? filter});
}

/// @nodoc
class __$watchAllAppointmentStartedCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res>
    implements _$watchAllAppointmentStartedCopyWith<$Res> {
  __$watchAllAppointmentStartedCopyWithImpl(_watchAllAppointmentStarted _value,
      $Res Function(_watchAllAppointmentStarted) _then)
      : super(_value, (v) => _then(v as _watchAllAppointmentStarted));

  @override
  _watchAllAppointmentStarted get _value =>
      super._value as _watchAllAppointmentStarted;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_watchAllAppointmentStarted(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_watchAllAppointmentStarted implements _watchAllAppointmentStarted {
  const _$_watchAllAppointmentStarted(this.filter);

  @override
  final String? filter;

  @override
  String toString() {
    return 'AppointmentEvent.watchAllAppointmentStarted(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _watchAllAppointmentStarted &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$watchAllAppointmentStartedCopyWith<_watchAllAppointmentStarted>
      get copyWith => __$watchAllAppointmentStartedCopyWithImpl<
          _watchAllAppointmentStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllAppointmentStarted,
    required TResult Function(
            Either<ValueFailure, List<Appointment>> failureOrItems)
        appointmentItemReceived,
  }) {
    return watchAllAppointmentStarted(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllAppointmentStarted,
    TResult Function(Either<ValueFailure, List<Appointment>> failureOrItems)?
        appointmentItemReceived,
    required TResult orElse(),
  }) {
    if (watchAllAppointmentStarted != null) {
      return watchAllAppointmentStarted(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllAppointmentStarted value)
        watchAllAppointmentStarted,
    required TResult Function(_AppointmentItemReceived value)
        appointmentItemReceived,
  }) {
    return watchAllAppointmentStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllAppointmentStarted value)?
        watchAllAppointmentStarted,
    TResult Function(_AppointmentItemReceived value)? appointmentItemReceived,
    required TResult orElse(),
  }) {
    if (watchAllAppointmentStarted != null) {
      return watchAllAppointmentStarted(this);
    }
    return orElse();
  }
}

abstract class _watchAllAppointmentStarted implements AppointmentEvent {
  const factory _watchAllAppointmentStarted(String? filter) =
      _$_watchAllAppointmentStarted;

  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$watchAllAppointmentStartedCopyWith<_watchAllAppointmentStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AppointmentItemReceivedCopyWith<$Res> {
  factory _$AppointmentItemReceivedCopyWith(_AppointmentItemReceived value,
          $Res Function(_AppointmentItemReceived) then) =
      __$AppointmentItemReceivedCopyWithImpl<$Res>;
  $Res call({Either<ValueFailure, List<Appointment>> failureOrItems});
}

/// @nodoc
class __$AppointmentItemReceivedCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res>
    implements _$AppointmentItemReceivedCopyWith<$Res> {
  __$AppointmentItemReceivedCopyWithImpl(_AppointmentItemReceived _value,
      $Res Function(_AppointmentItemReceived) _then)
      : super(_value, (v) => _then(v as _AppointmentItemReceived));

  @override
  _AppointmentItemReceived get _value =>
      super._value as _AppointmentItemReceived;

  @override
  $Res call({
    Object? failureOrItems = freezed,
  }) {
    return _then(_AppointmentItemReceived(
      failureOrItems == freezed
          ? _value.failureOrItems
          : failureOrItems // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, List<Appointment>>,
    ));
  }
}

/// @nodoc

class _$_AppointmentItemReceived implements _AppointmentItemReceived {
  const _$_AppointmentItemReceived(this.failureOrItems);

  @override
  final Either<ValueFailure, List<Appointment>> failureOrItems;

  @override
  String toString() {
    return 'AppointmentEvent.appointmentItemReceived(failureOrItems: $failureOrItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppointmentItemReceived &&
            (identical(other.failureOrItems, failureOrItems) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItems, failureOrItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrItems);

  @JsonKey(ignore: true)
  @override
  _$AppointmentItemReceivedCopyWith<_AppointmentItemReceived> get copyWith =>
      __$AppointmentItemReceivedCopyWithImpl<_AppointmentItemReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllAppointmentStarted,
    required TResult Function(
            Either<ValueFailure, List<Appointment>> failureOrItems)
        appointmentItemReceived,
  }) {
    return appointmentItemReceived(failureOrItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllAppointmentStarted,
    TResult Function(Either<ValueFailure, List<Appointment>> failureOrItems)?
        appointmentItemReceived,
    required TResult orElse(),
  }) {
    if (appointmentItemReceived != null) {
      return appointmentItemReceived(failureOrItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllAppointmentStarted value)
        watchAllAppointmentStarted,
    required TResult Function(_AppointmentItemReceived value)
        appointmentItemReceived,
  }) {
    return appointmentItemReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllAppointmentStarted value)?
        watchAllAppointmentStarted,
    TResult Function(_AppointmentItemReceived value)? appointmentItemReceived,
    required TResult orElse(),
  }) {
    if (appointmentItemReceived != null) {
      return appointmentItemReceived(this);
    }
    return orElse();
  }
}

abstract class _AppointmentItemReceived implements AppointmentEvent {
  const factory _AppointmentItemReceived(
          Either<ValueFailure, List<Appointment>> failureOrItems) =
      _$_AppointmentItemReceived;

  Either<ValueFailure, List<Appointment>> get failureOrItems =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AppointmentItemReceivedCopyWith<_AppointmentItemReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppointmentStateTearOff {
  const _$AppointmentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Appointment> items) {
    return _LoadSuccess(
      items,
    );
  }

  _LoadFailure loadFailure(ValueFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $AppointmentState = _$AppointmentStateTearOff();

/// @nodoc
mixin _$AppointmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Appointment> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Appointment> items)? loadSuccess,
    TResult Function(ValueFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  final AppointmentState _value;
  // ignore: unused_field
  final $Res Function(AppointmentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AppointmentStateCopyWithImpl<$Res>
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
    return 'AppointmentState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<Appointment> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Appointment> items)? loadSuccess,
    TResult Function(ValueFailure failure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppointmentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'AppointmentState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Appointment> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Appointment> items)? loadSuccess,
    TResult Function(ValueFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements AppointmentState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Appointment> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_LoadSuccess(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items);

  @override
  final List<Appointment> items;

  @override
  String toString() {
    return 'AppointmentState.loadSuccess(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Appointment> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Appointment> items)? loadSuccess,
    TResult Function(ValueFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements AppointmentState {
  const factory _LoadSuccess(List<Appointment> items) = _$_LoadSuccess;

  List<Appointment> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ValueFailure failure});

  $ValueFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final ValueFailure failure;

  @override
  String toString() {
    return 'AppointmentState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Appointment> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Appointment> items)? loadSuccess,
    TResult Function(ValueFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements AppointmentState {
  const factory _LoadFailure(ValueFailure failure) = _$_LoadFailure;

  ValueFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
