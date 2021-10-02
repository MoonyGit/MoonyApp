// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenderTearOff {
  const _$GenderTearOff();

  Male male([int? id = Gender.maleId]) {
    return Male(
      id,
    );
  }

  Female female([int? id = Gender.femaleId]) {
    return Female(
      id,
    );
  }

  Other other([int? id = Gender.otherId]) {
    return Other(
      id,
    );
  }
}

/// @nodoc
const $Gender = _$GenderTearOff();

/// @nodoc
mixin _$Gender {
  int? get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) male,
    required TResult Function(int? id) female,
    required TResult Function(int? id) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? male,
    TResult Function(int? id)? female,
    TResult Function(int? id)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenderCopyWith<Gender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res>;
  $Res call({int? id});
}

/// @nodoc
class _$GenderCopyWithImpl<$Res> implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  final Gender _value;
  // ignore: unused_field
  final $Res Function(Gender) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $MaleCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory $MaleCopyWith(Male value, $Res Function(Male) then) =
      _$MaleCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class _$MaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $MaleCopyWith<$Res> {
  _$MaleCopyWithImpl(Male _value, $Res Function(Male) _then)
      : super(_value, (v) => _then(v as Male));

  @override
  Male get _value => super._value as Male;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(Male(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Male implements Male {
  const _$Male([this.id = Gender.maleId]);

  @JsonKey(defaultValue: Gender.maleId)
  @override
  final int? id;

  @override
  String toString() {
    return 'Gender.male(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Male &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $MaleCopyWith<Male> get copyWith =>
      _$MaleCopyWithImpl<Male>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) male,
    required TResult Function(int? id) female,
    required TResult Function(int? id) other,
  }) {
    return male(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? male,
    TResult Function(int? id)? female,
    TResult Function(int? id)? other,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(Other value) other,
  }) {
    return male(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male(this);
    }
    return orElse();
  }
}

abstract class Male implements Gender {
  const factory Male([int? id]) = _$Male;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MaleCopyWith<Male> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FemaleCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory $FemaleCopyWith(Female value, $Res Function(Female) then) =
      _$FemaleCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class _$FemaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $FemaleCopyWith<$Res> {
  _$FemaleCopyWithImpl(Female _value, $Res Function(Female) _then)
      : super(_value, (v) => _then(v as Female));

  @override
  Female get _value => super._value as Female;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(Female(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Female implements Female {
  const _$Female([this.id = Gender.femaleId]);

  @JsonKey(defaultValue: Gender.femaleId)
  @override
  final int? id;

  @override
  String toString() {
    return 'Gender.female(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Female &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $FemaleCopyWith<Female> get copyWith =>
      _$FemaleCopyWithImpl<Female>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) male,
    required TResult Function(int? id) female,
    required TResult Function(int? id) other,
  }) {
    return female(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? male,
    TResult Function(int? id)? female,
    TResult Function(int? id)? other,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(Other value) other,
  }) {
    return female(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female(this);
    }
    return orElse();
  }
}

abstract class Female implements Gender {
  const factory Female([int? id]) = _$Female;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FemaleCopyWith<Female> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory $OtherCopyWith(Other value, $Res Function(Other) then) =
      _$OtherCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class _$OtherCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(Other _value, $Res Function(Other) _then)
      : super(_value, (v) => _then(v as Other));

  @override
  Other get _value => super._value as Other;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(Other(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Other implements Other {
  const _$Other([this.id = Gender.otherId]);

  @JsonKey(defaultValue: Gender.otherId)
  @override
  final int? id;

  @override
  String toString() {
    return 'Gender.other(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Other &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $OtherCopyWith<Other> get copyWith =>
      _$OtherCopyWithImpl<Other>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) male,
    required TResult Function(int? id) female,
    required TResult Function(int? id) other,
  }) {
    return other(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? male,
    TResult Function(int? id)? female,
    TResult Function(int? id)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Male value) male,
    required TResult Function(Female value) female,
    required TResult Function(Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Male value)? male,
    TResult Function(Female value)? female,
    TResult Function(Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class Other implements Gender {
  const factory Other([int? id]) = _$Other;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OtherCopyWith<Other> get copyWith => throw _privateConstructorUsedError;
}
