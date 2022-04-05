// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyPhoneStateDataSourceEventTearOff {
  const _$VerifyPhoneStateDataSourceEventTearOff();

  VerifyPhoneAutoLoginDataSource autoLogin({required String smsCode}) {
    return VerifyPhoneAutoLoginDataSource(
      smsCode: smsCode,
    );
  }

  VerifyPhoneErrorDataSource error({String? message}) {
    return VerifyPhoneErrorDataSource(
      message: message,
    );
  }

  VerifyPhoneOtpSentDataSource otpSent() {
    return const VerifyPhoneOtpSentDataSource();
  }
}

/// @nodoc
const $VerifyPhoneStateDataSourceEvent =
    _$VerifyPhoneStateDataSourceEventTearOff();

/// @nodoc
mixin _$VerifyPhoneStateDataSourceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) autoLogin,
    required TResult Function(String? message) error,
    required TResult Function() otpSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneAutoLoginDataSource value) autoLogin,
    required TResult Function(VerifyPhoneErrorDataSource value) error,
    required TResult Function(VerifyPhoneOtpSentDataSource value) otpSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneStateDataSourceEventCopyWith<$Res> {
  factory $VerifyPhoneStateDataSourceEventCopyWith(
          VerifyPhoneStateDataSourceEvent value,
          $Res Function(VerifyPhoneStateDataSourceEvent) then) =
      _$VerifyPhoneStateDataSourceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyPhoneStateDataSourceEventCopyWithImpl<$Res>
    implements $VerifyPhoneStateDataSourceEventCopyWith<$Res> {
  _$VerifyPhoneStateDataSourceEventCopyWithImpl(this._value, this._then);

  final VerifyPhoneStateDataSourceEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyPhoneStateDataSourceEvent) _then;
}

/// @nodoc
abstract class $VerifyPhoneAutoLoginDataSourceCopyWith<$Res> {
  factory $VerifyPhoneAutoLoginDataSourceCopyWith(
          VerifyPhoneAutoLoginDataSource value,
          $Res Function(VerifyPhoneAutoLoginDataSource) then) =
      _$VerifyPhoneAutoLoginDataSourceCopyWithImpl<$Res>;
  $Res call({String smsCode});
}

/// @nodoc
class _$VerifyPhoneAutoLoginDataSourceCopyWithImpl<$Res>
    extends _$VerifyPhoneStateDataSourceEventCopyWithImpl<$Res>
    implements $VerifyPhoneAutoLoginDataSourceCopyWith<$Res> {
  _$VerifyPhoneAutoLoginDataSourceCopyWithImpl(
      VerifyPhoneAutoLoginDataSource _value,
      $Res Function(VerifyPhoneAutoLoginDataSource) _then)
      : super(_value, (v) => _then(v as VerifyPhoneAutoLoginDataSource));

  @override
  VerifyPhoneAutoLoginDataSource get _value =>
      super._value as VerifyPhoneAutoLoginDataSource;

  @override
  $Res call({
    Object? smsCode = freezed,
  }) {
    return _then(VerifyPhoneAutoLoginDataSource(
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPhoneAutoLoginDataSource
    implements VerifyPhoneAutoLoginDataSource {
  const _$VerifyPhoneAutoLoginDataSource({required this.smsCode});

  @override
  final String smsCode;

  @override
  String toString() {
    return 'VerifyPhoneStateDataSourceEvent.autoLogin(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyPhoneAutoLoginDataSource &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(smsCode));

  @JsonKey(ignore: true)
  @override
  $VerifyPhoneAutoLoginDataSourceCopyWith<VerifyPhoneAutoLoginDataSource>
      get copyWith => _$VerifyPhoneAutoLoginDataSourceCopyWithImpl<
          VerifyPhoneAutoLoginDataSource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) autoLogin,
    required TResult Function(String? message) error,
    required TResult Function() otpSent,
  }) {
    return autoLogin(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
  }) {
    return autoLogin?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
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
    required TResult Function(VerifyPhoneAutoLoginDataSource value) autoLogin,
    required TResult Function(VerifyPhoneErrorDataSource value) error,
    required TResult Function(VerifyPhoneOtpSentDataSource value) otpSent,
  }) {
    return autoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
  }) {
    return autoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneAutoLoginDataSource
    implements VerifyPhoneStateDataSourceEvent {
  const factory VerifyPhoneAutoLoginDataSource({required String smsCode}) =
      _$VerifyPhoneAutoLoginDataSource;

  String get smsCode;
  @JsonKey(ignore: true)
  $VerifyPhoneAutoLoginDataSourceCopyWith<VerifyPhoneAutoLoginDataSource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneErrorDataSourceCopyWith<$Res> {
  factory $VerifyPhoneErrorDataSourceCopyWith(VerifyPhoneErrorDataSource value,
          $Res Function(VerifyPhoneErrorDataSource) then) =
      _$VerifyPhoneErrorDataSourceCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$VerifyPhoneErrorDataSourceCopyWithImpl<$Res>
    extends _$VerifyPhoneStateDataSourceEventCopyWithImpl<$Res>
    implements $VerifyPhoneErrorDataSourceCopyWith<$Res> {
  _$VerifyPhoneErrorDataSourceCopyWithImpl(VerifyPhoneErrorDataSource _value,
      $Res Function(VerifyPhoneErrorDataSource) _then)
      : super(_value, (v) => _then(v as VerifyPhoneErrorDataSource));

  @override
  VerifyPhoneErrorDataSource get _value =>
      super._value as VerifyPhoneErrorDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(VerifyPhoneErrorDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyPhoneErrorDataSource implements VerifyPhoneErrorDataSource {
  const _$VerifyPhoneErrorDataSource({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyPhoneStateDataSourceEvent.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyPhoneErrorDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $VerifyPhoneErrorDataSourceCopyWith<VerifyPhoneErrorDataSource>
      get copyWith =>
          _$VerifyPhoneErrorDataSourceCopyWithImpl<VerifyPhoneErrorDataSource>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) autoLogin,
    required TResult Function(String? message) error,
    required TResult Function() otpSent,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhoneAutoLoginDataSource value) autoLogin,
    required TResult Function(VerifyPhoneErrorDataSource value) error,
    required TResult Function(VerifyPhoneOtpSentDataSource value) otpSent,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneErrorDataSource
    implements VerifyPhoneStateDataSourceEvent {
  const factory VerifyPhoneErrorDataSource({String? message}) =
      _$VerifyPhoneErrorDataSource;

  String? get message;
  @JsonKey(ignore: true)
  $VerifyPhoneErrorDataSourceCopyWith<VerifyPhoneErrorDataSource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneOtpSentDataSourceCopyWith<$Res> {
  factory $VerifyPhoneOtpSentDataSourceCopyWith(
          VerifyPhoneOtpSentDataSource value,
          $Res Function(VerifyPhoneOtpSentDataSource) then) =
      _$VerifyPhoneOtpSentDataSourceCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyPhoneOtpSentDataSourceCopyWithImpl<$Res>
    extends _$VerifyPhoneStateDataSourceEventCopyWithImpl<$Res>
    implements $VerifyPhoneOtpSentDataSourceCopyWith<$Res> {
  _$VerifyPhoneOtpSentDataSourceCopyWithImpl(
      VerifyPhoneOtpSentDataSource _value,
      $Res Function(VerifyPhoneOtpSentDataSource) _then)
      : super(_value, (v) => _then(v as VerifyPhoneOtpSentDataSource));

  @override
  VerifyPhoneOtpSentDataSource get _value =>
      super._value as VerifyPhoneOtpSentDataSource;
}

/// @nodoc

class _$VerifyPhoneOtpSentDataSource implements VerifyPhoneOtpSentDataSource {
  const _$VerifyPhoneOtpSentDataSource();

  @override
  String toString() {
    return 'VerifyPhoneStateDataSourceEvent.otpSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyPhoneOtpSentDataSource);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smsCode) autoLogin,
    required TResult Function(String? message) error,
    required TResult Function() otpSent,
  }) {
    return otpSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
  }) {
    return otpSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smsCode)? autoLogin,
    TResult Function(String? message)? error,
    TResult Function()? otpSent,
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
    required TResult Function(VerifyPhoneAutoLoginDataSource value) autoLogin,
    required TResult Function(VerifyPhoneErrorDataSource value) error,
    required TResult Function(VerifyPhoneOtpSentDataSource value) otpSent,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhoneAutoLoginDataSource value)? autoLogin,
    TResult Function(VerifyPhoneErrorDataSource value)? error,
    TResult Function(VerifyPhoneOtpSentDataSource value)? otpSent,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneOtpSentDataSource
    implements VerifyPhoneStateDataSourceEvent {
  const factory VerifyPhoneOtpSentDataSource() = _$VerifyPhoneOtpSentDataSource;
}

/// @nodoc
class _$AuthFailureDataSourceEventTearOff {
  const _$AuthFailureDataSourceEventTearOff();

  AuthCredentialsAlreadyUsedDataSource credentialsAlreadyUsed(
      {String? message = null}) {
    return AuthCredentialsAlreadyUsedDataSource(
      message: message,
    );
  }

  AuthServerErrorDataSource serverError({String? message = null}) {
    return AuthServerErrorDataSource(
      message: message,
    );
  }

  AuthBadCredentialsDataSource badCredentials({String? message = null}) {
    return AuthBadCredentialsDataSource(
      message: message,
    );
  }

  AuthUnknownDataSource unknown({String? message = null}) {
    return AuthUnknownDataSource(
      message: message,
    );
  }

  AuthCancelledDataSource cancelled({String? message = null}) {
    return AuthCancelledDataSource(
      message: message,
    );
  }

  AuthOtpExpiredDataSource otpExpired({String? message = null}) {
    return AuthOtpExpiredDataSource(
      message: message,
    );
  }

  AuthBadOtpDataSource badOtp({String? message = null}) {
    return AuthBadOtpDataSource(
      message: message,
    );
  }
}

/// @nodoc
const $AuthFailureDataSourceEvent = _$AuthFailureDataSourceEventTearOff();

/// @nodoc
mixin _$AuthFailureDataSourceEvent {
  String? get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureDataSourceEventCopyWith<AuthFailureDataSourceEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthFailureDataSourceEventCopyWith(AuthFailureDataSourceEvent value,
          $Res Function(AuthFailureDataSourceEvent) then) =
      _$AuthFailureDataSourceEventCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  _$AuthFailureDataSourceEventCopyWithImpl(this._value, this._then);

  final AuthFailureDataSourceEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFailureDataSourceEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $AuthCredentialsAlreadyUsedDataSourceCopyWith<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthCredentialsAlreadyUsedDataSourceCopyWith(
          AuthCredentialsAlreadyUsedDataSource value,
          $Res Function(AuthCredentialsAlreadyUsedDataSource) then) =
      _$AuthCredentialsAlreadyUsedDataSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$AuthCredentialsAlreadyUsedDataSourceCopyWithImpl<$Res>
    extends _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthCredentialsAlreadyUsedDataSourceCopyWith<$Res> {
  _$AuthCredentialsAlreadyUsedDataSourceCopyWithImpl(
      AuthCredentialsAlreadyUsedDataSource _value,
      $Res Function(AuthCredentialsAlreadyUsedDataSource) _then)
      : super(_value, (v) => _then(v as AuthCredentialsAlreadyUsedDataSource));

  @override
  AuthCredentialsAlreadyUsedDataSource get _value =>
      super._value as AuthCredentialsAlreadyUsedDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthCredentialsAlreadyUsedDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthCredentialsAlreadyUsedDataSource
    implements AuthCredentialsAlreadyUsedDataSource {
  const _$AuthCredentialsAlreadyUsedDataSource({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailureDataSourceEvent.credentialsAlreadyUsed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthCredentialsAlreadyUsedDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthCredentialsAlreadyUsedDataSourceCopyWith<
          AuthCredentialsAlreadyUsedDataSource>
      get copyWith => _$AuthCredentialsAlreadyUsedDataSourceCopyWithImpl<
          AuthCredentialsAlreadyUsedDataSource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) {
    return credentialsAlreadyUsed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) {
    return credentialsAlreadyUsed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
    required TResult orElse(),
  }) {
    if (credentialsAlreadyUsed != null) {
      return credentialsAlreadyUsed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) {
    return credentialsAlreadyUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) {
    return credentialsAlreadyUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) {
    if (credentialsAlreadyUsed != null) {
      return credentialsAlreadyUsed(this);
    }
    return orElse();
  }
}

abstract class AuthCredentialsAlreadyUsedDataSource
    implements AuthFailureDataSourceEvent {
  const factory AuthCredentialsAlreadyUsedDataSource({String? message}) =
      _$AuthCredentialsAlreadyUsedDataSource;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $AuthCredentialsAlreadyUsedDataSourceCopyWith<
          AuthCredentialsAlreadyUsedDataSource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthServerErrorDataSourceCopyWith<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthServerErrorDataSourceCopyWith(AuthServerErrorDataSource value,
          $Res Function(AuthServerErrorDataSource) then) =
      _$AuthServerErrorDataSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$AuthServerErrorDataSourceCopyWithImpl<$Res>
    extends _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthServerErrorDataSourceCopyWith<$Res> {
  _$AuthServerErrorDataSourceCopyWithImpl(AuthServerErrorDataSource _value,
      $Res Function(AuthServerErrorDataSource) _then)
      : super(_value, (v) => _then(v as AuthServerErrorDataSource));

  @override
  AuthServerErrorDataSource get _value =>
      super._value as AuthServerErrorDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthServerErrorDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthServerErrorDataSource implements AuthServerErrorDataSource {
  const _$AuthServerErrorDataSource({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailureDataSourceEvent.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthServerErrorDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthServerErrorDataSourceCopyWith<AuthServerErrorDataSource> get copyWith =>
      _$AuthServerErrorDataSourceCopyWithImpl<AuthServerErrorDataSource>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
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
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class AuthServerErrorDataSource implements AuthFailureDataSourceEvent {
  const factory AuthServerErrorDataSource({String? message}) =
      _$AuthServerErrorDataSource;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $AuthServerErrorDataSourceCopyWith<AuthServerErrorDataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBadCredentialsDataSourceCopyWith<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthBadCredentialsDataSourceCopyWith(
          AuthBadCredentialsDataSource value,
          $Res Function(AuthBadCredentialsDataSource) then) =
      _$AuthBadCredentialsDataSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$AuthBadCredentialsDataSourceCopyWithImpl<$Res>
    extends _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthBadCredentialsDataSourceCopyWith<$Res> {
  _$AuthBadCredentialsDataSourceCopyWithImpl(
      AuthBadCredentialsDataSource _value,
      $Res Function(AuthBadCredentialsDataSource) _then)
      : super(_value, (v) => _then(v as AuthBadCredentialsDataSource));

  @override
  AuthBadCredentialsDataSource get _value =>
      super._value as AuthBadCredentialsDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthBadCredentialsDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthBadCredentialsDataSource implements AuthBadCredentialsDataSource {
  const _$AuthBadCredentialsDataSource({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailureDataSourceEvent.badCredentials(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthBadCredentialsDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthBadCredentialsDataSourceCopyWith<AuthBadCredentialsDataSource>
      get copyWith => _$AuthBadCredentialsDataSourceCopyWithImpl<
          AuthBadCredentialsDataSource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) {
    return badCredentials(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) {
    return badCredentials?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
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
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) {
    return badCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) {
    return badCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) {
    if (badCredentials != null) {
      return badCredentials(this);
    }
    return orElse();
  }
}

abstract class AuthBadCredentialsDataSource
    implements AuthFailureDataSourceEvent {
  const factory AuthBadCredentialsDataSource({String? message}) =
      _$AuthBadCredentialsDataSource;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $AuthBadCredentialsDataSourceCopyWith<AuthBadCredentialsDataSource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUnknownDataSourceCopyWith<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthUnknownDataSourceCopyWith(AuthUnknownDataSource value,
          $Res Function(AuthUnknownDataSource) then) =
      _$AuthUnknownDataSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$AuthUnknownDataSourceCopyWithImpl<$Res>
    extends _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthUnknownDataSourceCopyWith<$Res> {
  _$AuthUnknownDataSourceCopyWithImpl(
      AuthUnknownDataSource _value, $Res Function(AuthUnknownDataSource) _then)
      : super(_value, (v) => _then(v as AuthUnknownDataSource));

  @override
  AuthUnknownDataSource get _value => super._value as AuthUnknownDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthUnknownDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthUnknownDataSource implements AuthUnknownDataSource {
  const _$AuthUnknownDataSource({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailureDataSourceEvent.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthUnknownDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthUnknownDataSourceCopyWith<AuthUnknownDataSource> get copyWith =>
      _$AuthUnknownDataSourceCopyWithImpl<AuthUnknownDataSource>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
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
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class AuthUnknownDataSource implements AuthFailureDataSourceEvent {
  const factory AuthUnknownDataSource({String? message}) =
      _$AuthUnknownDataSource;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $AuthUnknownDataSourceCopyWith<AuthUnknownDataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCancelledDataSourceCopyWith<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthCancelledDataSourceCopyWith(AuthCancelledDataSource value,
          $Res Function(AuthCancelledDataSource) then) =
      _$AuthCancelledDataSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$AuthCancelledDataSourceCopyWithImpl<$Res>
    extends _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthCancelledDataSourceCopyWith<$Res> {
  _$AuthCancelledDataSourceCopyWithImpl(AuthCancelledDataSource _value,
      $Res Function(AuthCancelledDataSource) _then)
      : super(_value, (v) => _then(v as AuthCancelledDataSource));

  @override
  AuthCancelledDataSource get _value => super._value as AuthCancelledDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthCancelledDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthCancelledDataSource implements AuthCancelledDataSource {
  const _$AuthCancelledDataSource({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailureDataSourceEvent.cancelled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthCancelledDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthCancelledDataSourceCopyWith<AuthCancelledDataSource> get copyWith =>
      _$AuthCancelledDataSourceCopyWithImpl<AuthCancelledDataSource>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) {
    return cancelled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) {
    return cancelled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class AuthCancelledDataSource implements AuthFailureDataSourceEvent {
  const factory AuthCancelledDataSource({String? message}) =
      _$AuthCancelledDataSource;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $AuthCancelledDataSourceCopyWith<AuthCancelledDataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthOtpExpiredDataSourceCopyWith<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthOtpExpiredDataSourceCopyWith(AuthOtpExpiredDataSource value,
          $Res Function(AuthOtpExpiredDataSource) then) =
      _$AuthOtpExpiredDataSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$AuthOtpExpiredDataSourceCopyWithImpl<$Res>
    extends _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthOtpExpiredDataSourceCopyWith<$Res> {
  _$AuthOtpExpiredDataSourceCopyWithImpl(AuthOtpExpiredDataSource _value,
      $Res Function(AuthOtpExpiredDataSource) _then)
      : super(_value, (v) => _then(v as AuthOtpExpiredDataSource));

  @override
  AuthOtpExpiredDataSource get _value =>
      super._value as AuthOtpExpiredDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthOtpExpiredDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthOtpExpiredDataSource implements AuthOtpExpiredDataSource {
  const _$AuthOtpExpiredDataSource({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailureDataSourceEvent.otpExpired(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthOtpExpiredDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthOtpExpiredDataSourceCopyWith<AuthOtpExpiredDataSource> get copyWith =>
      _$AuthOtpExpiredDataSourceCopyWithImpl<AuthOtpExpiredDataSource>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) {
    return otpExpired(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) {
    return otpExpired?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
    required TResult orElse(),
  }) {
    if (otpExpired != null) {
      return otpExpired(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) {
    return otpExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) {
    return otpExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) {
    if (otpExpired != null) {
      return otpExpired(this);
    }
    return orElse();
  }
}

abstract class AuthOtpExpiredDataSource implements AuthFailureDataSourceEvent {
  const factory AuthOtpExpiredDataSource({String? message}) =
      _$AuthOtpExpiredDataSource;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $AuthOtpExpiredDataSourceCopyWith<AuthOtpExpiredDataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBadOtpDataSourceCopyWith<$Res>
    implements $AuthFailureDataSourceEventCopyWith<$Res> {
  factory $AuthBadOtpDataSourceCopyWith(AuthBadOtpDataSource value,
          $Res Function(AuthBadOtpDataSource) then) =
      _$AuthBadOtpDataSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$AuthBadOtpDataSourceCopyWithImpl<$Res>
    extends _$AuthFailureDataSourceEventCopyWithImpl<$Res>
    implements $AuthBadOtpDataSourceCopyWith<$Res> {
  _$AuthBadOtpDataSourceCopyWithImpl(
      AuthBadOtpDataSource _value, $Res Function(AuthBadOtpDataSource) _then)
      : super(_value, (v) => _then(v as AuthBadOtpDataSource));

  @override
  AuthBadOtpDataSource get _value => super._value as AuthBadOtpDataSource;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthBadOtpDataSource(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthBadOtpDataSource implements AuthBadOtpDataSource {
  const _$AuthBadOtpDataSource({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailureDataSourceEvent.badOtp(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthBadOtpDataSource &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthBadOtpDataSourceCopyWith<AuthBadOtpDataSource> get copyWith =>
      _$AuthBadOtpDataSourceCopyWithImpl<AuthBadOtpDataSource>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) credentialsAlreadyUsed,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) badCredentials,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) otpExpired,
    required TResult Function(String? message) badOtp,
  }) {
    return badOtp(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
  }) {
    return badOtp?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? credentialsAlreadyUsed,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? badCredentials,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? otpExpired,
    TResult Function(String? message)? badOtp,
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
    required TResult Function(AuthCredentialsAlreadyUsedDataSource value)
        credentialsAlreadyUsed,
    required TResult Function(AuthServerErrorDataSource value) serverError,
    required TResult Function(AuthBadCredentialsDataSource value)
        badCredentials,
    required TResult Function(AuthUnknownDataSource value) unknown,
    required TResult Function(AuthCancelledDataSource value) cancelled,
    required TResult Function(AuthOtpExpiredDataSource value) otpExpired,
    required TResult Function(AuthBadOtpDataSource value) badOtp,
  }) {
    return badOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
  }) {
    return badOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCredentialsAlreadyUsedDataSource value)?
        credentialsAlreadyUsed,
    TResult Function(AuthServerErrorDataSource value)? serverError,
    TResult Function(AuthBadCredentialsDataSource value)? badCredentials,
    TResult Function(AuthUnknownDataSource value)? unknown,
    TResult Function(AuthCancelledDataSource value)? cancelled,
    TResult Function(AuthOtpExpiredDataSource value)? otpExpired,
    TResult Function(AuthBadOtpDataSource value)? badOtp,
    required TResult orElse(),
  }) {
    if (badOtp != null) {
      return badOtp(this);
    }
    return orElse();
  }
}

abstract class AuthBadOtpDataSource implements AuthFailureDataSourceEvent {
  const factory AuthBadOtpDataSource({String? message}) =
      _$AuthBadOtpDataSource;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $AuthBadOtpDataSourceCopyWith<AuthBadOtpDataSource> get copyWith =>
      throw _privateConstructorUsedError;
}
