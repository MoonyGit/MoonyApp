// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_with_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInWithEmailUseCaseParamsTearOff {
  const _$SignInWithEmailUseCaseParamsTearOff();

  _SignInWithEmailUseCaseParams call(
      {required EmailAddress address, required Password password}) {
    return _SignInWithEmailUseCaseParams(
      address: address,
      password: password,
    );
  }
}

/// @nodoc
const $SignInWithEmailUseCaseParams = _$SignInWithEmailUseCaseParamsTearOff();

/// @nodoc
mixin _$SignInWithEmailUseCaseParams {
  EmailAddress get address => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInWithEmailUseCaseParamsCopyWith<SignInWithEmailUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithEmailUseCaseParamsCopyWith<$Res> {
  factory $SignInWithEmailUseCaseParamsCopyWith(
          SignInWithEmailUseCaseParams value,
          $Res Function(SignInWithEmailUseCaseParams) then) =
      _$SignInWithEmailUseCaseParamsCopyWithImpl<$Res>;
  $Res call({EmailAddress address, Password password});
}

/// @nodoc
class _$SignInWithEmailUseCaseParamsCopyWithImpl<$Res>
    implements $SignInWithEmailUseCaseParamsCopyWith<$Res> {
  _$SignInWithEmailUseCaseParamsCopyWithImpl(this._value, this._then);

  final SignInWithEmailUseCaseParams _value;
  // ignore: unused_field
  final $Res Function(SignInWithEmailUseCaseParams) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
abstract class _$SignInWithEmailUseCaseParamsCopyWith<$Res>
    implements $SignInWithEmailUseCaseParamsCopyWith<$Res> {
  factory _$SignInWithEmailUseCaseParamsCopyWith(
          _SignInWithEmailUseCaseParams value,
          $Res Function(_SignInWithEmailUseCaseParams) then) =
      __$SignInWithEmailUseCaseParamsCopyWithImpl<$Res>;
  @override
  $Res call({EmailAddress address, Password password});
}

/// @nodoc
class __$SignInWithEmailUseCaseParamsCopyWithImpl<$Res>
    extends _$SignInWithEmailUseCaseParamsCopyWithImpl<$Res>
    implements _$SignInWithEmailUseCaseParamsCopyWith<$Res> {
  __$SignInWithEmailUseCaseParamsCopyWithImpl(
      _SignInWithEmailUseCaseParams _value,
      $Res Function(_SignInWithEmailUseCaseParams) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailUseCaseParams));

  @override
  _SignInWithEmailUseCaseParams get _value =>
      super._value as _SignInWithEmailUseCaseParams;

  @override
  $Res call({
    Object? address = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInWithEmailUseCaseParams(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmailUseCaseParams implements _SignInWithEmailUseCaseParams {
  _$_SignInWithEmailUseCaseParams(
      {required this.address, required this.password});

  @override
  final EmailAddress address;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignInWithEmailUseCaseParams(address: $address, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithEmailUseCaseParams &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInWithEmailUseCaseParamsCopyWith<_SignInWithEmailUseCaseParams>
      get copyWith => __$SignInWithEmailUseCaseParamsCopyWithImpl<
          _SignInWithEmailUseCaseParams>(this, _$identity);
}

abstract class _SignInWithEmailUseCaseParams
    implements SignInWithEmailUseCaseParams {
  factory _SignInWithEmailUseCaseParams(
      {required EmailAddress address,
      required Password password}) = _$_SignInWithEmailUseCaseParams;

  @override
  EmailAddress get address => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInWithEmailUseCaseParamsCopyWith<_SignInWithEmailUseCaseParams>
      get copyWith => throw _privateConstructorUsedError;
}
