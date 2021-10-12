// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'save_user_infos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaveUserNameUseCaseParamTearOff {
  const _$SaveUserNameUseCaseParamTearOff();

  _SaveUserNameUseCaseParam call({required Name family, required Name first}) {
    return _SaveUserNameUseCaseParam(
      family: family,
      first: first,
    );
  }
}

/// @nodoc
const $SaveUserNameUseCaseParam = _$SaveUserNameUseCaseParamTearOff();

/// @nodoc
mixin _$SaveUserNameUseCaseParam {
  Name get family => throw _privateConstructorUsedError;
  Name get first => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveUserNameUseCaseParamCopyWith<SaveUserNameUseCaseParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveUserNameUseCaseParamCopyWith<$Res> {
  factory $SaveUserNameUseCaseParamCopyWith(SaveUserNameUseCaseParam value,
          $Res Function(SaveUserNameUseCaseParam) then) =
      _$SaveUserNameUseCaseParamCopyWithImpl<$Res>;
  $Res call({Name family, Name first});
}

/// @nodoc
class _$SaveUserNameUseCaseParamCopyWithImpl<$Res>
    implements $SaveUserNameUseCaseParamCopyWith<$Res> {
  _$SaveUserNameUseCaseParamCopyWithImpl(this._value, this._then);

  final SaveUserNameUseCaseParam _value;
  // ignore: unused_field
  final $Res Function(SaveUserNameUseCaseParam) _then;

  @override
  $Res call({
    Object? family = freezed,
    Object? first = freezed,
  }) {
    return _then(_value.copyWith(
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Name,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as Name,
    ));
  }
}

/// @nodoc
abstract class _$SaveUserNameUseCaseParamCopyWith<$Res>
    implements $SaveUserNameUseCaseParamCopyWith<$Res> {
  factory _$SaveUserNameUseCaseParamCopyWith(_SaveUserNameUseCaseParam value,
          $Res Function(_SaveUserNameUseCaseParam) then) =
      __$SaveUserNameUseCaseParamCopyWithImpl<$Res>;
  @override
  $Res call({Name family, Name first});
}

/// @nodoc
class __$SaveUserNameUseCaseParamCopyWithImpl<$Res>
    extends _$SaveUserNameUseCaseParamCopyWithImpl<$Res>
    implements _$SaveUserNameUseCaseParamCopyWith<$Res> {
  __$SaveUserNameUseCaseParamCopyWithImpl(_SaveUserNameUseCaseParam _value,
      $Res Function(_SaveUserNameUseCaseParam) _then)
      : super(_value, (v) => _then(v as _SaveUserNameUseCaseParam));

  @override
  _SaveUserNameUseCaseParam get _value =>
      super._value as _SaveUserNameUseCaseParam;

  @override
  $Res call({
    Object? family = freezed,
    Object? first = freezed,
  }) {
    return _then(_SaveUserNameUseCaseParam(
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Name,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as Name,
    ));
  }
}

/// @nodoc

class _$_SaveUserNameUseCaseParam implements _SaveUserNameUseCaseParam {
  _$_SaveUserNameUseCaseParam({required this.family, required this.first});

  @override
  final Name family;
  @override
  final Name first;

  @override
  String toString() {
    return 'SaveUserNameUseCaseParam(family: $family, first: $first)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveUserNameUseCaseParam &&
            (identical(other.family, family) ||
                const DeepCollectionEquality().equals(other.family, family)) &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(family) ^
      const DeepCollectionEquality().hash(first);

  @JsonKey(ignore: true)
  @override
  _$SaveUserNameUseCaseParamCopyWith<_SaveUserNameUseCaseParam> get copyWith =>
      __$SaveUserNameUseCaseParamCopyWithImpl<_SaveUserNameUseCaseParam>(
          this, _$identity);
}

abstract class _SaveUserNameUseCaseParam implements SaveUserNameUseCaseParam {
  factory _SaveUserNameUseCaseParam(
      {required Name family,
      required Name first}) = _$_SaveUserNameUseCaseParam;

  @override
  Name get family => throw _privateConstructorUsedError;
  @override
  Name get first => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SaveUserNameUseCaseParamCopyWith<_SaveUserNameUseCaseParam> get copyWith =>
      throw _privateConstructorUsedError;
}
