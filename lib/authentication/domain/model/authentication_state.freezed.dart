// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  AuthenticationLoading loading({required AuthenticationStatus status}) {
    return AuthenticationLoading(
      status: status,
    );
  }

  UnAuthenticated unAuthenticated({required AuthenticationStatus status}) {
    return UnAuthenticated(
      status: status,
    );
  }

  Authenticated authenticated({required AuthenticationStatus status}) {
    return Authenticated(
      status: status,
    );
  }

  AuthenticationFailure failure({required AuthenticationStatus status}) {
    return AuthenticationFailure(
      status: status,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) loading,
    required TResult Function(AuthenticationStatus status) unAuthenticated,
    required TResult Function(AuthenticationStatus status) authenticated,
    required TResult Function(AuthenticationStatus status) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticationFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({AuthenticationStatus status});

  $AuthenticationStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }

  @override
  $AuthenticationStatusCopyWith<$Res> get status {
    return $AuthenticationStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class $AuthenticationLoadingCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationLoadingCopyWith(AuthenticationLoading value,
          $Res Function(AuthenticationLoading) then) =
      _$AuthenticationLoadingCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationStatus status});

  @override
  $AuthenticationStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AuthenticationLoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationLoadingCopyWith<$Res> {
  _$AuthenticationLoadingCopyWithImpl(
      AuthenticationLoading _value, $Res Function(AuthenticationLoading) _then)
      : super(_value, (v) => _then(v as AuthenticationLoading));

  @override
  AuthenticationLoading get _value => super._value as AuthenticationLoading;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(AuthenticationLoading(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$AuthenticationLoading implements AuthenticationLoading {
  const _$AuthenticationLoading({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationState.loading(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationLoading &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $AuthenticationLoadingCopyWith<AuthenticationLoading> get copyWith =>
      _$AuthenticationLoadingCopyWithImpl<AuthenticationLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) loading,
    required TResult Function(AuthenticationStatus status) unAuthenticated,
    required TResult Function(AuthenticationStatus status) authenticated,
    required TResult Function(AuthenticationStatus status) failure,
  }) {
    return loading(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
  }) {
    return loading?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticationFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLoading implements AuthenticationState {
  const factory AuthenticationLoading({required AuthenticationStatus status}) =
      _$AuthenticationLoading;

  @override
  AuthenticationStatus get status;
  @override
  @JsonKey(ignore: true)
  $AuthenticationLoadingCopyWith<AuthenticationLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationStatus status});

  @override
  $AuthenticationStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(UnAuthenticated(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnAuthenticated &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $UnAuthenticatedCopyWith<UnAuthenticated> get copyWith =>
      _$UnAuthenticatedCopyWithImpl<UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) loading,
    required TResult Function(AuthenticationStatus status) unAuthenticated,
    required TResult Function(AuthenticationStatus status) authenticated,
    required TResult Function(AuthenticationStatus status) failure,
  }) {
    return unAuthenticated(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
  }) {
    return unAuthenticated?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticationFailure value) failure,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthenticationState {
  const factory UnAuthenticated({required AuthenticationStatus status}) =
      _$UnAuthenticated;

  @override
  AuthenticationStatus get status;
  @override
  @JsonKey(ignore: true)
  $UnAuthenticatedCopyWith<UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationStatus status});

  @override
  $AuthenticationStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(Authenticated(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authenticated &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) loading,
    required TResult Function(AuthenticationStatus status) unAuthenticated,
    required TResult Function(AuthenticationStatus status) authenticated,
    required TResult Function(AuthenticationStatus status) failure,
  }) {
    return authenticated(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
  }) {
    return authenticated?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticationFailure value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated({required AuthenticationStatus status}) =
      _$Authenticated;

  @override
  AuthenticationStatus get status;
  @override
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationFailureCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationFailureCopyWith(AuthenticationFailure value,
          $Res Function(AuthenticationFailure) then) =
      _$AuthenticationFailureCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationStatus status});

  @override
  $AuthenticationStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AuthenticationFailureCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationFailureCopyWith<$Res> {
  _$AuthenticationFailureCopyWithImpl(
      AuthenticationFailure _value, $Res Function(AuthenticationFailure) _then)
      : super(_value, (v) => _then(v as AuthenticationFailure));

  @override
  AuthenticationFailure get _value => super._value as AuthenticationFailure;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(AuthenticationFailure(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$AuthenticationFailure implements AuthenticationFailure {
  const _$AuthenticationFailure({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationState.failure(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationFailure &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $AuthenticationFailureCopyWith<AuthenticationFailure> get copyWith =>
      _$AuthenticationFailureCopyWithImpl<AuthenticationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) loading,
    required TResult Function(AuthenticationStatus status) unAuthenticated,
    required TResult Function(AuthenticationStatus status) authenticated,
    required TResult Function(AuthenticationStatus status) failure,
  }) {
    return failure(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
  }) {
    return failure?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? loading,
    TResult Function(AuthenticationStatus status)? unAuthenticated,
    TResult Function(AuthenticationStatus status)? authenticated,
    TResult Function(AuthenticationStatus status)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticationFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailure implements AuthenticationState {
  const factory AuthenticationFailure({required AuthenticationStatus status}) =
      _$AuthenticationFailure;

  @override
  AuthenticationStatus get status;
  @override
  @JsonKey(ignore: true)
  $AuthenticationFailureCopyWith<AuthenticationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationStatusTearOff {
  const _$AuthenticationStatusTearOff();

  SignedIn signedIn() {
    return const SignedIn();
  }

  SignedOut signedOut() {
    return const SignedOut();
  }

  SessionExpired sessionExpired() {
    return const SessionExpired();
  }

  BadCredentials badCredentials({String? message = null}) {
    return BadCredentials(
      message: message,
    );
  }

  Cancelled cancelled() {
    return const Cancelled();
  }

  CredentialsAlreadyUsed used() {
    return const CredentialsAlreadyUsed();
  }

  BadOtp badOtp({String? message = null}) {
    return BadOtp(
      message: message,
    );
  }

  OtpSent otpSent() {
    return const OtpSent();
  }

  PhoneAutoLogin autoLogin({required String smsCode}) {
    return PhoneAutoLogin(
      smsCode: smsCode,
    );
  }

  InProgress inProgress() {
    return const InProgress();
  }

  ServerError serverError({String? message = null}) {
    return ServerError(
      message: message,
    );
  }

  Unknown unknown({String? message = null}) {
    return Unknown(
      message: message,
    );
  }
}

/// @nodoc
const $AuthenticationStatus = _$AuthenticationStatusTearOff();

/// @nodoc
mixin _$AuthenticationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStatusCopyWith<$Res> {
  factory $AuthenticationStatusCopyWith(AuthenticationStatus value,
          $Res Function(AuthenticationStatus) then) =
      _$AuthenticationStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStatusCopyWithImpl<$Res>
    implements $AuthenticationStatusCopyWith<$Res> {
  _$AuthenticationStatusCopyWithImpl(this._value, this._then);

  final AuthenticationStatus _value;
  // ignore: unused_field
  final $Res Function(AuthenticationStatus) _then;
}

/// @nodoc
abstract class $SignedInCopyWith<$Res> {
  factory $SignedInCopyWith(SignedIn value, $Res Function(SignedIn) then) =
      _$SignedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedInCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $SignedInCopyWith<$Res> {
  _$SignedInCopyWithImpl(SignedIn _value, $Res Function(SignedIn) _then)
      : super(_value, (v) => _then(v as SignedIn));

  @override
  SignedIn get _value => super._value as SignedIn;
}

/// @nodoc

class _$SignedIn implements SignedIn {
  const _$SignedIn();

  @override
  String toString() {
    return 'AuthenticationStatus.signedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements AuthenticationStatus {
  const factory SignedIn() = _$SignedIn;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthenticationStatus.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthenticationStatus {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class $SessionExpiredCopyWith<$Res> {
  factory $SessionExpiredCopyWith(
          SessionExpired value, $Res Function(SessionExpired) then) =
      _$SessionExpiredCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionExpiredCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $SessionExpiredCopyWith<$Res> {
  _$SessionExpiredCopyWithImpl(
      SessionExpired _value, $Res Function(SessionExpired) _then)
      : super(_value, (v) => _then(v as SessionExpired));

  @override
  SessionExpired get _value => super._value as SessionExpired;
}

/// @nodoc

class _$SessionExpired implements SessionExpired {
  const _$SessionExpired();

  @override
  String toString() {
    return 'AuthenticationStatus.sessionExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SessionExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return sessionExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return sessionExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return sessionExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return sessionExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired(this);
    }
    return orElse();
  }
}

abstract class SessionExpired implements AuthenticationStatus {
  const factory SessionExpired() = _$SessionExpired;
}

/// @nodoc
abstract class $BadCredentialsCopyWith<$Res> {
  factory $BadCredentialsCopyWith(
          BadCredentials value, $Res Function(BadCredentials) then) =
      _$BadCredentialsCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$BadCredentialsCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $BadCredentialsCopyWith<$Res> {
  _$BadCredentialsCopyWithImpl(
      BadCredentials _value, $Res Function(BadCredentials) _then)
      : super(_value, (v) => _then(v as BadCredentials));

  @override
  BadCredentials get _value => super._value as BadCredentials;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(BadCredentials(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadCredentials implements BadCredentials {
  const _$BadCredentials({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthenticationStatus.badCredentials(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BadCredentials &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $BadCredentialsCopyWith<BadCredentials> get copyWith =>
      _$BadCredentialsCopyWithImpl<BadCredentials>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return badCredentials(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return badCredentials?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (badCredentials != null) {
      return badCredentials(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return badCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return badCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (badCredentials != null) {
      return badCredentials(this);
    }
    return orElse();
  }
}

abstract class BadCredentials implements AuthenticationStatus {
  const factory BadCredentials({String? message}) = _$BadCredentials;

  String? get message;
  @JsonKey(ignore: true)
  $BadCredentialsCopyWith<BadCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelledCopyWith<$Res> {
  factory $CancelledCopyWith(Cancelled value, $Res Function(Cancelled) then) =
      _$CancelledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $CancelledCopyWith<$Res> {
  _$CancelledCopyWithImpl(Cancelled _value, $Res Function(Cancelled) _then)
      : super(_value, (v) => _then(v as Cancelled));

  @override
  Cancelled get _value => super._value as Cancelled;
}

/// @nodoc

class _$Cancelled implements Cancelled {
  const _$Cancelled();

  @override
  String toString() {
    return 'AuthenticationStatus.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled implements AuthenticationStatus {
  const factory Cancelled() = _$Cancelled;
}

/// @nodoc
abstract class $CredentialsAlreadyUsedCopyWith<$Res> {
  factory $CredentialsAlreadyUsedCopyWith(CredentialsAlreadyUsed value,
          $Res Function(CredentialsAlreadyUsed) then) =
      _$CredentialsAlreadyUsedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsAlreadyUsedCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $CredentialsAlreadyUsedCopyWith<$Res> {
  _$CredentialsAlreadyUsedCopyWithImpl(CredentialsAlreadyUsed _value,
      $Res Function(CredentialsAlreadyUsed) _then)
      : super(_value, (v) => _then(v as CredentialsAlreadyUsed));

  @override
  CredentialsAlreadyUsed get _value => super._value as CredentialsAlreadyUsed;
}

/// @nodoc

class _$CredentialsAlreadyUsed implements CredentialsAlreadyUsed {
  const _$CredentialsAlreadyUsed();

  @override
  String toString() {
    return 'AuthenticationStatus.used()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CredentialsAlreadyUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return used();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return used?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (used != null) {
      return used();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return used(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return used?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (used != null) {
      return used(this);
    }
    return orElse();
  }
}

abstract class CredentialsAlreadyUsed implements AuthenticationStatus {
  const factory CredentialsAlreadyUsed() = _$CredentialsAlreadyUsed;
}

/// @nodoc
abstract class $BadOtpCopyWith<$Res> {
  factory $BadOtpCopyWith(BadOtp value, $Res Function(BadOtp) then) =
      _$BadOtpCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$BadOtpCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $BadOtpCopyWith<$Res> {
  _$BadOtpCopyWithImpl(BadOtp _value, $Res Function(BadOtp) _then)
      : super(_value, (v) => _then(v as BadOtp));

  @override
  BadOtp get _value => super._value as BadOtp;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(BadOtp(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadOtp implements BadOtp {
  const _$BadOtp({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthenticationStatus.badOtp(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BadOtp &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $BadOtpCopyWith<BadOtp> get copyWith =>
      _$BadOtpCopyWithImpl<BadOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return badOtp(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return badOtp?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (badOtp != null) {
      return badOtp(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return badOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return badOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (badOtp != null) {
      return badOtp(this);
    }
    return orElse();
  }
}

abstract class BadOtp implements AuthenticationStatus {
  const factory BadOtp({String? message}) = _$BadOtp;

  String? get message;
  @JsonKey(ignore: true)
  $BadOtpCopyWith<BadOtp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpSentCopyWith<$Res> {
  factory $OtpSentCopyWith(OtpSent value, $Res Function(OtpSent) then) =
      _$OtpSentCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtpSentCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $OtpSentCopyWith<$Res> {
  _$OtpSentCopyWithImpl(OtpSent _value, $Res Function(OtpSent) _then)
      : super(_value, (v) => _then(v as OtpSent));

  @override
  OtpSent get _value => super._value as OtpSent;
}

/// @nodoc

class _$OtpSent implements OtpSent {
  const _$OtpSent();

  @override
  String toString() {
    return 'AuthenticationStatus.otpSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OtpSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return otpSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return otpSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class OtpSent implements AuthenticationStatus {
  const factory OtpSent() = _$OtpSent;
}

/// @nodoc
abstract class $PhoneAutoLoginCopyWith<$Res> {
  factory $PhoneAutoLoginCopyWith(
          PhoneAutoLogin value, $Res Function(PhoneAutoLogin) then) =
      _$PhoneAutoLoginCopyWithImpl<$Res>;
  $Res call({String smsCode});
}

/// @nodoc
class _$PhoneAutoLoginCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $PhoneAutoLoginCopyWith<$Res> {
  _$PhoneAutoLoginCopyWithImpl(
      PhoneAutoLogin _value, $Res Function(PhoneAutoLogin) _then)
      : super(_value, (v) => _then(v as PhoneAutoLogin));

  @override
  PhoneAutoLogin get _value => super._value as PhoneAutoLogin;

  @override
  $Res call({
    Object? smsCode = freezed,
  }) {
    return _then(PhoneAutoLogin(
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneAutoLogin implements PhoneAutoLogin {
  const _$PhoneAutoLogin({required this.smsCode});

  @override
  final String smsCode;

  @override
  String toString() {
    return 'AuthenticationStatus.autoLogin(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneAutoLogin &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(smsCode));

  @JsonKey(ignore: true)
  @override
  $PhoneAutoLoginCopyWith<PhoneAutoLogin> get copyWith =>
      _$PhoneAutoLoginCopyWithImpl<PhoneAutoLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return autoLogin(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return autoLogin?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return autoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return autoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin(this);
    }
    return orElse();
  }
}

abstract class PhoneAutoLogin implements AuthenticationStatus {
  const factory PhoneAutoLogin({required String smsCode}) = _$PhoneAutoLogin;

  String get smsCode;
  @JsonKey(ignore: true)
  $PhoneAutoLoginCopyWith<PhoneAutoLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InProgressCopyWith<$Res> {
  factory $InProgressCopyWith(
          InProgress value, $Res Function(InProgress) then) =
      _$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$InProgressCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $InProgressCopyWith<$Res> {
  _$InProgressCopyWithImpl(InProgress _value, $Res Function(InProgress) _then)
      : super(_value, (v) => _then(v as InProgress));

  @override
  InProgress get _value => super._value as InProgress;
}

/// @nodoc

class _$InProgress implements InProgress {
  const _$InProgress();

  @override
  String toString() {
    return 'AuthenticationStatus.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements AuthenticationStatus {
  const factory InProgress() = _$InProgress;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthenticationStatus.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthenticationStatus {
  const factory ServerError({String? message}) = _$ServerError;

  String? get message;
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$UnknownCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res>
    implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(Unknown _value, $Res Function(Unknown) _then)
      : super(_value, (v) => _then(v as Unknown));

  @override
  Unknown get _value => super._value as Unknown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthenticationStatus.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unknown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UnknownCopyWith<Unknown> get copyWith =>
      _$UnknownCopyWithImpl<Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
    required TResult Function(String? message) badCredentials,
    required TResult Function() cancelled,
    required TResult Function() used,
    required TResult Function(String? message) badOtp,
    required TResult Function() otpSent,
    required TResult Function(String smsCode) autoLogin,
    required TResult Function() inProgress,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    TResult Function(String? message)? badCredentials,
    TResult Function()? cancelled,
    TResult Function()? used,
    TResult Function(String? message)? badOtp,
    TResult Function()? otpSent,
    TResult Function(String smsCode)? autoLogin,
    TResult Function()? inProgress,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SessionExpired value) sessionExpired,
    required TResult Function(BadCredentials value) badCredentials,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(CredentialsAlreadyUsed value) used,
    required TResult Function(BadOtp value) badOtp,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(PhoneAutoLogin value) autoLogin,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SessionExpired value)? sessionExpired,
    TResult Function(BadCredentials value)? badCredentials,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(CredentialsAlreadyUsed value)? used,
    TResult Function(BadOtp value)? badOtp,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(PhoneAutoLogin value)? autoLogin,
    TResult Function(InProgress value)? inProgress,
    TResult Function(ServerError value)? serverError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthenticationStatus {
  const factory Unknown({String? message}) = _$Unknown;

  String? get message;
  @JsonKey(ignore: true)
  $UnknownCopyWith<Unknown> get copyWith => throw _privateConstructorUsedError;
}
