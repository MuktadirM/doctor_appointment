// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DoctorEventTearOff {
  const _$DoctorEventTearOff();

  _watchAllDoctorStarted watchAllDoctorStarted(String? filter) {
    return _watchAllDoctorStarted(
      filter,
    );
  }

  _DoctorItemReceived doctorItemReceived(
      Either<ValueFailure, List<Doctor>> failureOrItems) {
    return _DoctorItemReceived(
      failureOrItems,
    );
  }
}

/// @nodoc
const $DoctorEvent = _$DoctorEventTearOff();

/// @nodoc
mixin _$DoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllDoctorStarted,
    required TResult Function(Either<ValueFailure, List<Doctor>> failureOrItems)
        doctorItemReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllDoctorStarted,
    TResult Function(Either<ValueFailure, List<Doctor>> failureOrItems)?
        doctorItemReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllDoctorStarted value)
        watchAllDoctorStarted,
    required TResult Function(_DoctorItemReceived value) doctorItemReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllDoctorStarted value)? watchAllDoctorStarted,
    TResult Function(_DoctorItemReceived value)? doctorItemReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res> implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  final DoctorEvent _value;
  // ignore: unused_field
  final $Res Function(DoctorEvent) _then;
}

/// @nodoc
abstract class _$watchAllDoctorStartedCopyWith<$Res> {
  factory _$watchAllDoctorStartedCopyWith(_watchAllDoctorStarted value,
          $Res Function(_watchAllDoctorStarted) then) =
      __$watchAllDoctorStartedCopyWithImpl<$Res>;
  $Res call({String? filter});
}

/// @nodoc
class __$watchAllDoctorStartedCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res>
    implements _$watchAllDoctorStartedCopyWith<$Res> {
  __$watchAllDoctorStartedCopyWithImpl(_watchAllDoctorStarted _value,
      $Res Function(_watchAllDoctorStarted) _then)
      : super(_value, (v) => _then(v as _watchAllDoctorStarted));

  @override
  _watchAllDoctorStarted get _value => super._value as _watchAllDoctorStarted;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_watchAllDoctorStarted(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_watchAllDoctorStarted implements _watchAllDoctorStarted {
  const _$_watchAllDoctorStarted(this.filter);

  @override
  final String? filter;

  @override
  String toString() {
    return 'DoctorEvent.watchAllDoctorStarted(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _watchAllDoctorStarted &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$watchAllDoctorStartedCopyWith<_watchAllDoctorStarted> get copyWith =>
      __$watchAllDoctorStartedCopyWithImpl<_watchAllDoctorStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllDoctorStarted,
    required TResult Function(Either<ValueFailure, List<Doctor>> failureOrItems)
        doctorItemReceived,
  }) {
    return watchAllDoctorStarted(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllDoctorStarted,
    TResult Function(Either<ValueFailure, List<Doctor>> failureOrItems)?
        doctorItemReceived,
    required TResult orElse(),
  }) {
    if (watchAllDoctorStarted != null) {
      return watchAllDoctorStarted(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllDoctorStarted value)
        watchAllDoctorStarted,
    required TResult Function(_DoctorItemReceived value) doctorItemReceived,
  }) {
    return watchAllDoctorStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllDoctorStarted value)? watchAllDoctorStarted,
    TResult Function(_DoctorItemReceived value)? doctorItemReceived,
    required TResult orElse(),
  }) {
    if (watchAllDoctorStarted != null) {
      return watchAllDoctorStarted(this);
    }
    return orElse();
  }
}

abstract class _watchAllDoctorStarted implements DoctorEvent {
  const factory _watchAllDoctorStarted(String? filter) =
      _$_watchAllDoctorStarted;

  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$watchAllDoctorStartedCopyWith<_watchAllDoctorStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DoctorItemReceivedCopyWith<$Res> {
  factory _$DoctorItemReceivedCopyWith(
          _DoctorItemReceived value, $Res Function(_DoctorItemReceived) then) =
      __$DoctorItemReceivedCopyWithImpl<$Res>;
  $Res call({Either<ValueFailure, List<Doctor>> failureOrItems});
}

/// @nodoc
class __$DoctorItemReceivedCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res>
    implements _$DoctorItemReceivedCopyWith<$Res> {
  __$DoctorItemReceivedCopyWithImpl(
      _DoctorItemReceived _value, $Res Function(_DoctorItemReceived) _then)
      : super(_value, (v) => _then(v as _DoctorItemReceived));

  @override
  _DoctorItemReceived get _value => super._value as _DoctorItemReceived;

  @override
  $Res call({
    Object? failureOrItems = freezed,
  }) {
    return _then(_DoctorItemReceived(
      failureOrItems == freezed
          ? _value.failureOrItems
          : failureOrItems // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, List<Doctor>>,
    ));
  }
}

/// @nodoc

class _$_DoctorItemReceived implements _DoctorItemReceived {
  const _$_DoctorItemReceived(this.failureOrItems);

  @override
  final Either<ValueFailure, List<Doctor>> failureOrItems;

  @override
  String toString() {
    return 'DoctorEvent.doctorItemReceived(failureOrItems: $failureOrItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DoctorItemReceived &&
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
  _$DoctorItemReceivedCopyWith<_DoctorItemReceived> get copyWith =>
      __$DoctorItemReceivedCopyWithImpl<_DoctorItemReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllDoctorStarted,
    required TResult Function(Either<ValueFailure, List<Doctor>> failureOrItems)
        doctorItemReceived,
  }) {
    return doctorItemReceived(failureOrItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllDoctorStarted,
    TResult Function(Either<ValueFailure, List<Doctor>> failureOrItems)?
        doctorItemReceived,
    required TResult orElse(),
  }) {
    if (doctorItemReceived != null) {
      return doctorItemReceived(failureOrItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllDoctorStarted value)
        watchAllDoctorStarted,
    required TResult Function(_DoctorItemReceived value) doctorItemReceived,
  }) {
    return doctorItemReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllDoctorStarted value)? watchAllDoctorStarted,
    TResult Function(_DoctorItemReceived value)? doctorItemReceived,
    required TResult orElse(),
  }) {
    if (doctorItemReceived != null) {
      return doctorItemReceived(this);
    }
    return orElse();
  }
}

abstract class _DoctorItemReceived implements DoctorEvent {
  const factory _DoctorItemReceived(
          Either<ValueFailure, List<Doctor>> failureOrItems) =
      _$_DoctorItemReceived;

  Either<ValueFailure, List<Doctor>> get failureOrItems =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DoctorItemReceivedCopyWith<_DoctorItemReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DoctorStateTearOff {
  const _$DoctorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Doctor> items) {
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
const $DoctorState = _$DoctorStateTearOff();

/// @nodoc
mixin _$DoctorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Doctor> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Doctor> items)? loadSuccess,
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
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res> implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  final DoctorState _value;
  // ignore: unused_field
  final $Res Function(DoctorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DoctorStateCopyWithImpl<$Res>
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
    return 'DoctorState.initial()';
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
    required TResult Function(List<Doctor> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Doctor> items)? loadSuccess,
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

abstract class _Initial implements DoctorState {
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
    extends _$DoctorStateCopyWithImpl<$Res>
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
    return 'DoctorState.loadInProgress()';
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
    required TResult Function(List<Doctor> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Doctor> items)? loadSuccess,
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

abstract class _LoadInProgress implements DoctorState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Doctor> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$DoctorStateCopyWithImpl<$Res>
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
              as List<Doctor>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items);

  @override
  final List<Doctor> items;

  @override
  String toString() {
    return 'DoctorState.loadSuccess(items: $items)';
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
    required TResult Function(List<Doctor> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Doctor> items)? loadSuccess,
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

abstract class _LoadSuccess implements DoctorState {
  const factory _LoadSuccess(List<Doctor> items) = _$_LoadSuccess;

  List<Doctor> get items => throw _privateConstructorUsedError;
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
class __$LoadFailureCopyWithImpl<$Res> extends _$DoctorStateCopyWithImpl<$Res>
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
    return 'DoctorState.loadFailure(failure: $failure)';
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
    required TResult Function(List<Doctor> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Doctor> items)? loadSuccess,
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

abstract class _LoadFailure implements DoctorState {
  const factory _LoadFailure(ValueFailure failure) = _$_LoadFailure;

  ValueFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
