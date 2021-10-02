// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'relation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RelationStateTearOff {
  const _$RelationStateTearOff();

  Alone alone({int? id = RelationState.aloneId}) {
    return Alone(
      id: id,
    );
  }

  Taken taken({int? id = RelationState.takenId}) {
    return Taken(
      id: id,
    );
  }

  Secret secret({int? id = RelationState.secretId}) {
    return Secret(
      id: id,
    );
  }
}

/// @nodoc
const $RelationState = _$RelationStateTearOff();

/// @nodoc
mixin _$RelationState {
  int? get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) alone,
    required TResult Function(int? id) taken,
    required TResult Function(int? id) secret,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? alone,
    TResult Function(int? id)? taken,
    TResult Function(int? id)? secret,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alone value) alone,
    required TResult Function(Taken value) taken,
    required TResult Function(Secret value) secret,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alone value)? alone,
    TResult Function(Taken value)? taken,
    TResult Function(Secret value)? secret,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelationStateCopyWith<RelationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationStateCopyWith<$Res> {
  factory $RelationStateCopyWith(
          RelationState value, $Res Function(RelationState) then) =
      _$RelationStateCopyWithImpl<$Res>;
  $Res call({int? id});
}

/// @nodoc
class _$RelationStateCopyWithImpl<$Res>
    implements $RelationStateCopyWith<$Res> {
  _$RelationStateCopyWithImpl(this._value, this._then);

  final RelationState _value;
  // ignore: unused_field
  final $Res Function(RelationState) _then;

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
abstract class $AloneCopyWith<$Res> implements $RelationStateCopyWith<$Res> {
  factory $AloneCopyWith(Alone value, $Res Function(Alone) then) =
      _$AloneCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class _$AloneCopyWithImpl<$Res> extends _$RelationStateCopyWithImpl<$Res>
    implements $AloneCopyWith<$Res> {
  _$AloneCopyWithImpl(Alone _value, $Res Function(Alone) _then)
      : super(_value, (v) => _then(v as Alone));

  @override
  Alone get _value => super._value as Alone;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(Alone(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Alone implements Alone {
  const _$Alone({this.id = RelationState.aloneId});

  @JsonKey(defaultValue: RelationState.aloneId)
  @override
  final int? id;

  @override
  String toString() {
    return 'RelationState.alone(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Alone &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $AloneCopyWith<Alone> get copyWith =>
      _$AloneCopyWithImpl<Alone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) alone,
    required TResult Function(int? id) taken,
    required TResult Function(int? id) secret,
  }) {
    return alone(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? alone,
    TResult Function(int? id)? taken,
    TResult Function(int? id)? secret,
    required TResult orElse(),
  }) {
    if (alone != null) {
      return alone(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alone value) alone,
    required TResult Function(Taken value) taken,
    required TResult Function(Secret value) secret,
  }) {
    return alone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alone value)? alone,
    TResult Function(Taken value)? taken,
    TResult Function(Secret value)? secret,
    required TResult orElse(),
  }) {
    if (alone != null) {
      return alone(this);
    }
    return orElse();
  }
}

abstract class Alone implements RelationState {
  const factory Alone({int? id}) = _$Alone;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AloneCopyWith<Alone> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakenCopyWith<$Res> implements $RelationStateCopyWith<$Res> {
  factory $TakenCopyWith(Taken value, $Res Function(Taken) then) =
      _$TakenCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class _$TakenCopyWithImpl<$Res> extends _$RelationStateCopyWithImpl<$Res>
    implements $TakenCopyWith<$Res> {
  _$TakenCopyWithImpl(Taken _value, $Res Function(Taken) _then)
      : super(_value, (v) => _then(v as Taken));

  @override
  Taken get _value => super._value as Taken;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(Taken(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Taken implements Taken {
  const _$Taken({this.id = RelationState.takenId});

  @JsonKey(defaultValue: RelationState.takenId)
  @override
  final int? id;

  @override
  String toString() {
    return 'RelationState.taken(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Taken &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $TakenCopyWith<Taken> get copyWith =>
      _$TakenCopyWithImpl<Taken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) alone,
    required TResult Function(int? id) taken,
    required TResult Function(int? id) secret,
  }) {
    return taken(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? alone,
    TResult Function(int? id)? taken,
    TResult Function(int? id)? secret,
    required TResult orElse(),
  }) {
    if (taken != null) {
      return taken(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alone value) alone,
    required TResult Function(Taken value) taken,
    required TResult Function(Secret value) secret,
  }) {
    return taken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alone value)? alone,
    TResult Function(Taken value)? taken,
    TResult Function(Secret value)? secret,
    required TResult orElse(),
  }) {
    if (taken != null) {
      return taken(this);
    }
    return orElse();
  }
}

abstract class Taken implements RelationState {
  const factory Taken({int? id}) = _$Taken;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TakenCopyWith<Taken> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecretCopyWith<$Res> implements $RelationStateCopyWith<$Res> {
  factory $SecretCopyWith(Secret value, $Res Function(Secret) then) =
      _$SecretCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class _$SecretCopyWithImpl<$Res> extends _$RelationStateCopyWithImpl<$Res>
    implements $SecretCopyWith<$Res> {
  _$SecretCopyWithImpl(Secret _value, $Res Function(Secret) _then)
      : super(_value, (v) => _then(v as Secret));

  @override
  Secret get _value => super._value as Secret;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(Secret(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Secret implements Secret {
  const _$Secret({this.id = RelationState.secretId});

  @JsonKey(defaultValue: RelationState.secretId)
  @override
  final int? id;

  @override
  String toString() {
    return 'RelationState.secret(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Secret &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $SecretCopyWith<Secret> get copyWith =>
      _$SecretCopyWithImpl<Secret>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) alone,
    required TResult Function(int? id) taken,
    required TResult Function(int? id) secret,
  }) {
    return secret(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? alone,
    TResult Function(int? id)? taken,
    TResult Function(int? id)? secret,
    required TResult orElse(),
  }) {
    if (secret != null) {
      return secret(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alone value) alone,
    required TResult Function(Taken value) taken,
    required TResult Function(Secret value) secret,
  }) {
    return secret(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alone value)? alone,
    TResult Function(Taken value)? taken,
    TResult Function(Secret value)? secret,
    required TResult orElse(),
  }) {
    if (secret != null) {
      return secret(this);
    }
    return orElse();
  }
}

abstract class Secret implements RelationState {
  const factory Secret({int? id}) = _$Secret;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SecretCopyWith<Secret> get copyWith => throw _privateConstructorUsedError;
}
