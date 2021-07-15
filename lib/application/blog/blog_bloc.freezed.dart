// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlogEventTearOff {
  const _$BlogEventTearOff();

  _watchAllBlogStarted watchAllBlogStarted(String? filter) {
    return _watchAllBlogStarted(
      filter,
    );
  }

  _BlogItemReceived blogItemReceived(
      Either<ValueFailure, List<Blog>> failureOrItems) {
    return _BlogItemReceived(
      failureOrItems,
    );
  }
}

/// @nodoc
const $BlogEvent = _$BlogEventTearOff();

/// @nodoc
mixin _$BlogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllBlogStarted,
    required TResult Function(Either<ValueFailure, List<Blog>> failureOrItems)
        blogItemReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllBlogStarted,
    TResult Function(Either<ValueFailure, List<Blog>> failureOrItems)?
        blogItemReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllBlogStarted value) watchAllBlogStarted,
    required TResult Function(_BlogItemReceived value) blogItemReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllBlogStarted value)? watchAllBlogStarted,
    TResult Function(_BlogItemReceived value)? blogItemReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogEventCopyWith<$Res> {
  factory $BlogEventCopyWith(BlogEvent value, $Res Function(BlogEvent) then) =
      _$BlogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlogEventCopyWithImpl<$Res> implements $BlogEventCopyWith<$Res> {
  _$BlogEventCopyWithImpl(this._value, this._then);

  final BlogEvent _value;
  // ignore: unused_field
  final $Res Function(BlogEvent) _then;
}

/// @nodoc
abstract class _$watchAllBlogStartedCopyWith<$Res> {
  factory _$watchAllBlogStartedCopyWith(_watchAllBlogStarted value,
          $Res Function(_watchAllBlogStarted) then) =
      __$watchAllBlogStartedCopyWithImpl<$Res>;
  $Res call({String? filter});
}

/// @nodoc
class __$watchAllBlogStartedCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res>
    implements _$watchAllBlogStartedCopyWith<$Res> {
  __$watchAllBlogStartedCopyWithImpl(
      _watchAllBlogStarted _value, $Res Function(_watchAllBlogStarted) _then)
      : super(_value, (v) => _then(v as _watchAllBlogStarted));

  @override
  _watchAllBlogStarted get _value => super._value as _watchAllBlogStarted;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_watchAllBlogStarted(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_watchAllBlogStarted implements _watchAllBlogStarted {
  const _$_watchAllBlogStarted(this.filter);

  @override
  final String? filter;

  @override
  String toString() {
    return 'BlogEvent.watchAllBlogStarted(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _watchAllBlogStarted &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$watchAllBlogStartedCopyWith<_watchAllBlogStarted> get copyWith =>
      __$watchAllBlogStartedCopyWithImpl<_watchAllBlogStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllBlogStarted,
    required TResult Function(Either<ValueFailure, List<Blog>> failureOrItems)
        blogItemReceived,
  }) {
    return watchAllBlogStarted(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllBlogStarted,
    TResult Function(Either<ValueFailure, List<Blog>> failureOrItems)?
        blogItemReceived,
    required TResult orElse(),
  }) {
    if (watchAllBlogStarted != null) {
      return watchAllBlogStarted(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllBlogStarted value) watchAllBlogStarted,
    required TResult Function(_BlogItemReceived value) blogItemReceived,
  }) {
    return watchAllBlogStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllBlogStarted value)? watchAllBlogStarted,
    TResult Function(_BlogItemReceived value)? blogItemReceived,
    required TResult orElse(),
  }) {
    if (watchAllBlogStarted != null) {
      return watchAllBlogStarted(this);
    }
    return orElse();
  }
}

abstract class _watchAllBlogStarted implements BlogEvent {
  const factory _watchAllBlogStarted(String? filter) = _$_watchAllBlogStarted;

  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$watchAllBlogStartedCopyWith<_watchAllBlogStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BlogItemReceivedCopyWith<$Res> {
  factory _$BlogItemReceivedCopyWith(
          _BlogItemReceived value, $Res Function(_BlogItemReceived) then) =
      __$BlogItemReceivedCopyWithImpl<$Res>;
  $Res call({Either<ValueFailure, List<Blog>> failureOrItems});
}

/// @nodoc
class __$BlogItemReceivedCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res>
    implements _$BlogItemReceivedCopyWith<$Res> {
  __$BlogItemReceivedCopyWithImpl(
      _BlogItemReceived _value, $Res Function(_BlogItemReceived) _then)
      : super(_value, (v) => _then(v as _BlogItemReceived));

  @override
  _BlogItemReceived get _value => super._value as _BlogItemReceived;

  @override
  $Res call({
    Object? failureOrItems = freezed,
  }) {
    return _then(_BlogItemReceived(
      failureOrItems == freezed
          ? _value.failureOrItems
          : failureOrItems // ignore: cast_nullable_to_non_nullable
              as Either<ValueFailure, List<Blog>>,
    ));
  }
}

/// @nodoc

class _$_BlogItemReceived implements _BlogItemReceived {
  const _$_BlogItemReceived(this.failureOrItems);

  @override
  final Either<ValueFailure, List<Blog>> failureOrItems;

  @override
  String toString() {
    return 'BlogEvent.blogItemReceived(failureOrItems: $failureOrItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlogItemReceived &&
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
  _$BlogItemReceivedCopyWith<_BlogItemReceived> get copyWith =>
      __$BlogItemReceivedCopyWithImpl<_BlogItemReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? filter) watchAllBlogStarted,
    required TResult Function(Either<ValueFailure, List<Blog>> failureOrItems)
        blogItemReceived,
  }) {
    return blogItemReceived(failureOrItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? filter)? watchAllBlogStarted,
    TResult Function(Either<ValueFailure, List<Blog>> failureOrItems)?
        blogItemReceived,
    required TResult orElse(),
  }) {
    if (blogItemReceived != null) {
      return blogItemReceived(failureOrItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAllBlogStarted value) watchAllBlogStarted,
    required TResult Function(_BlogItemReceived value) blogItemReceived,
  }) {
    return blogItemReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAllBlogStarted value)? watchAllBlogStarted,
    TResult Function(_BlogItemReceived value)? blogItemReceived,
    required TResult orElse(),
  }) {
    if (blogItemReceived != null) {
      return blogItemReceived(this);
    }
    return orElse();
  }
}

abstract class _BlogItemReceived implements BlogEvent {
  const factory _BlogItemReceived(
      Either<ValueFailure, List<Blog>> failureOrItems) = _$_BlogItemReceived;

  Either<ValueFailure, List<Blog>> get failureOrItems =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BlogItemReceivedCopyWith<_BlogItemReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BlogStateTearOff {
  const _$BlogStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Blog> items) {
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
const $BlogState = _$BlogStateTearOff();

/// @nodoc
mixin _$BlogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Blog> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Blog> items)? loadSuccess,
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
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res> implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

  final BlogState _value;
  // ignore: unused_field
  final $Res Function(BlogState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BlogStateCopyWithImpl<$Res>
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
    return 'BlogState.initial()';
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
    required TResult Function(List<Blog> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Blog> items)? loadSuccess,
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

abstract class _Initial implements BlogState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$BlogStateCopyWithImpl<$Res>
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
    return 'BlogState.loadInProgress()';
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
    required TResult Function(List<Blog> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Blog> items)? loadSuccess,
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

abstract class _LoadInProgress implements BlogState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Blog> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$BlogStateCopyWithImpl<$Res>
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
              as List<Blog>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items);

  @override
  final List<Blog> items;

  @override
  String toString() {
    return 'BlogState.loadSuccess(items: $items)';
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
    required TResult Function(List<Blog> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Blog> items)? loadSuccess,
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

abstract class _LoadSuccess implements BlogState {
  const factory _LoadSuccess(List<Blog> items) = _$_LoadSuccess;

  List<Blog> get items => throw _privateConstructorUsedError;
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
class __$LoadFailureCopyWithImpl<$Res> extends _$BlogStateCopyWithImpl<$Res>
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
    return 'BlogState.loadFailure(failure: $failure)';
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
    required TResult Function(List<Blog> items) loadSuccess,
    required TResult Function(ValueFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Blog> items)? loadSuccess,
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

abstract class _LoadFailure implements BlogState {
  const factory _LoadFailure(ValueFailure failure) = _$_LoadFailure;

  ValueFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
