// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegistrationFailureTearOff {
  const _$RegistrationFailureTearOff();

  _InvalidData invalidData(String message) {
    return _InvalidData(
      message,
    );
  }

  _PasswordNotMatch passwordNotMatch() {
    return const _PasswordNotMatch();
  }

  _ServerError serverError() {
    return const _ServerError();
  }

  _EmailAlreadyInUse emailAlreadyInUse() {
    return const _EmailAlreadyInUse();
  }

  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

/// @nodoc
const $RegistrationFailure = _$RegistrationFailureTearOff();

/// @nodoc
mixin _$RegistrationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidData,
    required TResult Function() passwordNotMatch,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidData,
    TResult Function()? passwordNotMatch,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_PasswordNotMatch value) passwordNotMatch,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_PasswordNotMatch value)? passwordNotMatch,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFailureCopyWith<$Res> {
  factory $RegistrationFailureCopyWith(
          RegistrationFailure value, $Res Function(RegistrationFailure) then) =
      _$RegistrationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationFailureCopyWithImpl<$Res>
    implements $RegistrationFailureCopyWith<$Res> {
  _$RegistrationFailureCopyWithImpl(this._value, this._then);

  final RegistrationFailure _value;
  // ignore: unused_field
  final $Res Function(RegistrationFailure) _then;
}

/// @nodoc
abstract class _$InvalidDataCopyWith<$Res> {
  factory _$InvalidDataCopyWith(
          _InvalidData value, $Res Function(_InvalidData) then) =
      __$InvalidDataCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$InvalidDataCopyWithImpl<$Res>
    extends _$RegistrationFailureCopyWithImpl<$Res>
    implements _$InvalidDataCopyWith<$Res> {
  __$InvalidDataCopyWithImpl(
      _InvalidData _value, $Res Function(_InvalidData) _then)
      : super(_value, (v) => _then(v as _InvalidData));

  @override
  _InvalidData get _value => super._value as _InvalidData;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_InvalidData(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidData implements _InvalidData {
  const _$_InvalidData(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrationFailure.invalidData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidData &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidDataCopyWith<_InvalidData> get copyWith =>
      __$InvalidDataCopyWithImpl<_InvalidData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidData,
    required TResult Function() passwordNotMatch,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() unexpected,
  }) {
    return invalidData(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidData,
    TResult Function()? passwordNotMatch,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_PasswordNotMatch value) passwordNotMatch,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_PasswordNotMatch value)? passwordNotMatch,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class _InvalidData implements RegistrationFailure {
  const factory _InvalidData(String message) = _$_InvalidData;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvalidDataCopyWith<_InvalidData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordNotMatchCopyWith<$Res> {
  factory _$PasswordNotMatchCopyWith(
          _PasswordNotMatch value, $Res Function(_PasswordNotMatch) then) =
      __$PasswordNotMatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$PasswordNotMatchCopyWithImpl<$Res>
    extends _$RegistrationFailureCopyWithImpl<$Res>
    implements _$PasswordNotMatchCopyWith<$Res> {
  __$PasswordNotMatchCopyWithImpl(
      _PasswordNotMatch _value, $Res Function(_PasswordNotMatch) _then)
      : super(_value, (v) => _then(v as _PasswordNotMatch));

  @override
  _PasswordNotMatch get _value => super._value as _PasswordNotMatch;
}

/// @nodoc

class _$_PasswordNotMatch implements _PasswordNotMatch {
  const _$_PasswordNotMatch();

  @override
  String toString() {
    return 'RegistrationFailure.passwordNotMatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PasswordNotMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidData,
    required TResult Function() passwordNotMatch,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() unexpected,
  }) {
    return passwordNotMatch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidData,
    TResult Function()? passwordNotMatch,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (passwordNotMatch != null) {
      return passwordNotMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_PasswordNotMatch value) passwordNotMatch,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return passwordNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_PasswordNotMatch value)? passwordNotMatch,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (passwordNotMatch != null) {
      return passwordNotMatch(this);
    }
    return orElse();
  }
}

abstract class _PasswordNotMatch implements RegistrationFailure {
  const factory _PasswordNotMatch() = _$_PasswordNotMatch;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$RegistrationFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'RegistrationFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidData,
    required TResult Function() passwordNotMatch,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() unexpected,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidData,
    TResult Function()? passwordNotMatch,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_PasswordNotMatch value) passwordNotMatch,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_PasswordNotMatch value)? passwordNotMatch,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements RegistrationFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$EmailAlreadyInUseCopyWith<$Res> {
  factory _$EmailAlreadyInUseCopyWith(
          _EmailAlreadyInUse value, $Res Function(_EmailAlreadyInUse) then) =
      __$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$RegistrationFailureCopyWithImpl<$Res>
    implements _$EmailAlreadyInUseCopyWith<$Res> {
  __$EmailAlreadyInUseCopyWithImpl(
      _EmailAlreadyInUse _value, $Res Function(_EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _EmailAlreadyInUse));

  @override
  _EmailAlreadyInUse get _value => super._value as _EmailAlreadyInUse;
}

/// @nodoc

class _$_EmailAlreadyInUse implements _EmailAlreadyInUse {
  const _$_EmailAlreadyInUse();

  @override
  String toString() {
    return 'RegistrationFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidData,
    required TResult Function() passwordNotMatch,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() unexpected,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidData,
    TResult Function()? passwordNotMatch,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_PasswordNotMatch value) passwordNotMatch,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_PasswordNotMatch value)? passwordNotMatch,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements RegistrationFailure {
  const factory _EmailAlreadyInUse() = _$_EmailAlreadyInUse;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res>
    extends _$RegistrationFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'RegistrationFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidData,
    required TResult Function() passwordNotMatch,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidData,
    TResult Function()? passwordNotMatch,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_PasswordNotMatch value) passwordNotMatch,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_PasswordNotMatch value)? passwordNotMatch,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements RegistrationFailure {
  const factory _Unexpected() = _$_Unexpected;
}
