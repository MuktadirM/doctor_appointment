// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

  _RegisterUser registerUser(Register register) {
    return _RegisterUser(
      register,
    );
  }
}

/// @nodoc
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  Register get register => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Register register) registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Register register)? registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormEventCopyWith<SignUpFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
  $Res call({Register register});
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;

  @override
  $Res call({
    Object? register = freezed,
  }) {
    return _then(_value.copyWith(
      register: register == freezed
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register,
    ));
  }
}

/// @nodoc
abstract class _$RegisterUserCopyWith<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  factory _$RegisterUserCopyWith(
          _RegisterUser value, $Res Function(_RegisterUser) then) =
      __$RegisterUserCopyWithImpl<$Res>;
  @override
  $Res call({Register register});
}

/// @nodoc
class __$RegisterUserCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$RegisterUserCopyWith<$Res> {
  __$RegisterUserCopyWithImpl(
      _RegisterUser _value, $Res Function(_RegisterUser) _then)
      : super(_value, (v) => _then(v as _RegisterUser));

  @override
  _RegisterUser get _value => super._value as _RegisterUser;

  @override
  $Res call({
    Object? register = freezed,
  }) {
    return _then(_RegisterUser(
      register == freezed
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register,
    ));
  }
}

/// @nodoc

class _$_RegisterUser implements _RegisterUser {
  const _$_RegisterUser(this.register);

  @override
  final Register register;

  @override
  String toString() {
    return 'SignUpFormEvent.registerUser(register: $register)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterUser &&
            (identical(other.register, register) ||
                const DeepCollectionEquality()
                    .equals(other.register, register)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(register);

  @JsonKey(ignore: true)
  @override
  _$RegisterUserCopyWith<_RegisterUser> get copyWith =>
      __$RegisterUserCopyWithImpl<_RegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Register register) registerUser,
  }) {
    return registerUser(register);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Register register)? registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(register);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUser implements SignUpFormEvent {
  const factory _RegisterUser(Register register) = _$_RegisterUser;

  @override
  Register get register => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterUserCopyWith<_RegisterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Authenticated authenticated(Profile profile) {
    return _Authenticated(
      profile,
    );
  }

  _InvalidRegistration invalidRegistration(RegistrationFailure failure) {
    return _InvalidRegistration(
      failure,
    );
  }
}

/// @nodoc
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile) authenticated,
    required TResult Function(RegistrationFailure failure) invalidRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? authenticated,
    TResult Function(RegistrationFailure failure)? invalidRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_InvalidRegistration value) invalidRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_InvalidRegistration value)? invalidRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SignUpFormStateCopyWithImpl<$Res>
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
    return 'SignUpFormState.initial()';
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
    required TResult Function(Profile profile) authenticated,
    required TResult Function(RegistrationFailure failure) invalidRegistration,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? authenticated,
    TResult Function(RegistrationFailure failure)? invalidRegistration,
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
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_InvalidRegistration value) invalidRegistration,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_InvalidRegistration value)? invalidRegistration,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpFormState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({Profile profile});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_Authenticated(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'SignUpFormState.authenticated(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile) authenticated,
    required TResult Function(RegistrationFailure failure) invalidRegistration,
  }) {
    return authenticated(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? authenticated,
    TResult Function(RegistrationFailure failure)? invalidRegistration,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_InvalidRegistration value) invalidRegistration,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_InvalidRegistration value)? invalidRegistration,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements SignUpFormState {
  const factory _Authenticated(Profile profile) = _$_Authenticated;

  Profile get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidRegistrationCopyWith<$Res> {
  factory _$InvalidRegistrationCopyWith(_InvalidRegistration value,
          $Res Function(_InvalidRegistration) then) =
      __$InvalidRegistrationCopyWithImpl<$Res>;
  $Res call({RegistrationFailure failure});

  $RegistrationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$InvalidRegistrationCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$InvalidRegistrationCopyWith<$Res> {
  __$InvalidRegistrationCopyWithImpl(
      _InvalidRegistration _value, $Res Function(_InvalidRegistration) _then)
      : super(_value, (v) => _then(v as _InvalidRegistration));

  @override
  _InvalidRegistration get _value => super._value as _InvalidRegistration;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_InvalidRegistration(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RegistrationFailure,
    ));
  }

  @override
  $RegistrationFailureCopyWith<$Res> get failure {
    return $RegistrationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_InvalidRegistration implements _InvalidRegistration {
  const _$_InvalidRegistration(this.failure);

  @override
  final RegistrationFailure failure;

  @override
  String toString() {
    return 'SignUpFormState.invalidRegistration(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidRegistration &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$InvalidRegistrationCopyWith<_InvalidRegistration> get copyWith =>
      __$InvalidRegistrationCopyWithImpl<_InvalidRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile) authenticated,
    required TResult Function(RegistrationFailure failure) invalidRegistration,
  }) {
    return invalidRegistration(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile)? authenticated,
    TResult Function(RegistrationFailure failure)? invalidRegistration,
    required TResult orElse(),
  }) {
    if (invalidRegistration != null) {
      return invalidRegistration(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_InvalidRegistration value) invalidRegistration,
  }) {
    return invalidRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_InvalidRegistration value)? invalidRegistration,
    required TResult orElse(),
  }) {
    if (invalidRegistration != null) {
      return invalidRegistration(this);
    }
    return orElse();
  }
}

abstract class _InvalidRegistration implements SignUpFormState {
  const factory _InvalidRegistration(RegistrationFailure failure) =
      _$_InvalidRegistration;

  RegistrationFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvalidRegistrationCopyWith<_InvalidRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}
