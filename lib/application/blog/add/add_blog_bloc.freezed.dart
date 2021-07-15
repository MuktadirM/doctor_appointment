// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_blog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddBlogEventTearOff {
  const _$AddBlogEventTearOff();

  _Initialization initialization() {
    return const _Initialization();
  }

  _AddBlog addBlog(Blog blog) {
    return _AddBlog(
      blog,
    );
  }
}

/// @nodoc
const $AddBlogEvent = _$AddBlogEventTearOff();

/// @nodoc
mixin _$AddBlogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(Blog blog) addBlog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(Blog blog)? addBlog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_AddBlog value) addBlog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_AddBlog value)? addBlog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBlogEventCopyWith<$Res> {
  factory $AddBlogEventCopyWith(
          AddBlogEvent value, $Res Function(AddBlogEvent) then) =
      _$AddBlogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddBlogEventCopyWithImpl<$Res> implements $AddBlogEventCopyWith<$Res> {
  _$AddBlogEventCopyWithImpl(this._value, this._then);

  final AddBlogEvent _value;
  // ignore: unused_field
  final $Res Function(AddBlogEvent) _then;
}

/// @nodoc
abstract class _$InitializationCopyWith<$Res> {
  factory _$InitializationCopyWith(
          _Initialization value, $Res Function(_Initialization) then) =
      __$InitializationCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializationCopyWithImpl<$Res>
    extends _$AddBlogEventCopyWithImpl<$Res>
    implements _$InitializationCopyWith<$Res> {
  __$InitializationCopyWithImpl(
      _Initialization _value, $Res Function(_Initialization) _then)
      : super(_value, (v) => _then(v as _Initialization));

  @override
  _Initialization get _value => super._value as _Initialization;
}

/// @nodoc

class _$_Initialization implements _Initialization {
  const _$_Initialization();

  @override
  String toString() {
    return 'AddBlogEvent.initialization()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialization);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(Blog blog) addBlog,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(Blog blog)? addBlog,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_AddBlog value) addBlog,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_AddBlog value)? addBlog,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class _Initialization implements AddBlogEvent {
  const factory _Initialization() = _$_Initialization;
}

/// @nodoc
abstract class _$AddBlogCopyWith<$Res> {
  factory _$AddBlogCopyWith(_AddBlog value, $Res Function(_AddBlog) then) =
      __$AddBlogCopyWithImpl<$Res>;
  $Res call({Blog blog});
}

/// @nodoc
class __$AddBlogCopyWithImpl<$Res> extends _$AddBlogEventCopyWithImpl<$Res>
    implements _$AddBlogCopyWith<$Res> {
  __$AddBlogCopyWithImpl(_AddBlog _value, $Res Function(_AddBlog) _then)
      : super(_value, (v) => _then(v as _AddBlog));

  @override
  _AddBlog get _value => super._value as _AddBlog;

  @override
  $Res call({
    Object? blog = freezed,
  }) {
    return _then(_AddBlog(
      blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog,
    ));
  }
}

/// @nodoc

class _$_AddBlog implements _AddBlog {
  const _$_AddBlog(this.blog);

  @override
  final Blog blog;

  @override
  String toString() {
    return 'AddBlogEvent.addBlog(blog: $blog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddBlog &&
            (identical(other.blog, blog) ||
                const DeepCollectionEquality().equals(other.blog, blog)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(blog);

  @JsonKey(ignore: true)
  @override
  _$AddBlogCopyWith<_AddBlog> get copyWith =>
      __$AddBlogCopyWithImpl<_AddBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(Blog blog) addBlog,
  }) {
    return addBlog(blog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(Blog blog)? addBlog,
    required TResult orElse(),
  }) {
    if (addBlog != null) {
      return addBlog(blog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_AddBlog value) addBlog,
  }) {
    return addBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_AddBlog value)? addBlog,
    required TResult orElse(),
  }) {
    if (addBlog != null) {
      return addBlog(this);
    }
    return orElse();
  }
}

abstract class _AddBlog implements AddBlogEvent {
  const factory _AddBlog(Blog blog) = _$_AddBlog;

  Blog get blog => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddBlogCopyWith<_AddBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddBlogStateTearOff {
  const _$AddBlogStateTearOff();

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
const $AddBlogState = _$AddBlogStateTearOff();

/// @nodoc
mixin _$AddBlogState {
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
abstract class $AddBlogStateCopyWith<$Res> {
  factory $AddBlogStateCopyWith(
          AddBlogState value, $Res Function(AddBlogState) then) =
      _$AddBlogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddBlogStateCopyWithImpl<$Res> implements $AddBlogStateCopyWith<$Res> {
  _$AddBlogStateCopyWithImpl(this._value, this._then);

  final AddBlogState _value;
  // ignore: unused_field
  final $Res Function(AddBlogState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddBlogStateCopyWithImpl<$Res>
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
    return 'AddBlogState.initial()';
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

abstract class _Initial implements AddBlogState {
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
    extends _$AddBlogStateCopyWithImpl<$Res>
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
    return 'AddBlogState.addInProgress()';
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

abstract class _AddInProgress implements AddBlogState {
  const factory _AddInProgress() = _$_AddInProgress;
}

/// @nodoc
abstract class _$AddSuccessCopyWith<$Res> {
  factory _$AddSuccessCopyWith(
          _AddSuccess value, $Res Function(_AddSuccess) then) =
      __$AddSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddSuccessCopyWithImpl<$Res> extends _$AddBlogStateCopyWithImpl<$Res>
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
    return 'AddBlogState.addSuccess()';
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

abstract class _AddSuccess implements AddBlogState {
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
class __$FailToAddCopyWithImpl<$Res> extends _$AddBlogStateCopyWithImpl<$Res>
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
    return 'AddBlogState.failToAdd(failure: $failure)';
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

abstract class _FailToAdd implements AddBlogState {
  const factory _FailToAdd(ValueFailure failure) = _$_FailToAdd;

  ValueFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailToAddCopyWith<_FailToAdd> get copyWith =>
      throw _privateConstructorUsedError;
}
