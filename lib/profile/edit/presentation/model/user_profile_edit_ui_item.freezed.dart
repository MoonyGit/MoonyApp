// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_edit_ui_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileEditUiTearOff {
  const _$UserProfileEditUiTearOff();

  UserProfileEditHeader header({required String title}) {
    return UserProfileEditHeader(
      title: title,
    );
  }

  UserProfileEditItem item({required String content, required String value}) {
    return UserProfileEditItem(
      content: content,
      value: value,
    );
  }
}

/// @nodoc
const $UserProfileEditUi = _$UserProfileEditUiTearOff();

/// @nodoc
mixin _$UserProfileEditUi {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) header,
    required TResult Function(String content, String value) item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String content, String value)? item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String content, String value)? item,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileEditHeader value) header,
    required TResult Function(UserProfileEditItem value) item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserProfileEditHeader value)? header,
    TResult Function(UserProfileEditItem value)? item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileEditHeader value)? header,
    TResult Function(UserProfileEditItem value)? item,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEditUiCopyWith<$Res> {
  factory $UserProfileEditUiCopyWith(
          UserProfileEditUi value, $Res Function(UserProfileEditUi) then) =
      _$UserProfileEditUiCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileEditUiCopyWithImpl<$Res>
    implements $UserProfileEditUiCopyWith<$Res> {
  _$UserProfileEditUiCopyWithImpl(this._value, this._then);

  final UserProfileEditUi _value;
  // ignore: unused_field
  final $Res Function(UserProfileEditUi) _then;
}

/// @nodoc
abstract class $UserProfileEditHeaderCopyWith<$Res> {
  factory $UserProfileEditHeaderCopyWith(UserProfileEditHeader value,
          $Res Function(UserProfileEditHeader) then) =
      _$UserProfileEditHeaderCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$UserProfileEditHeaderCopyWithImpl<$Res>
    extends _$UserProfileEditUiCopyWithImpl<$Res>
    implements $UserProfileEditHeaderCopyWith<$Res> {
  _$UserProfileEditHeaderCopyWithImpl(
      UserProfileEditHeader _value, $Res Function(UserProfileEditHeader) _then)
      : super(_value, (v) => _then(v as UserProfileEditHeader));

  @override
  UserProfileEditHeader get _value => super._value as UserProfileEditHeader;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(UserProfileEditHeader(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfileEditHeader implements UserProfileEditHeader {
  const _$UserProfileEditHeader({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'UserProfileEditUi.header(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileEditHeader &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $UserProfileEditHeaderCopyWith<UserProfileEditHeader> get copyWith =>
      _$UserProfileEditHeaderCopyWithImpl<UserProfileEditHeader>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) header,
    required TResult Function(String content, String value) item,
  }) {
    return header(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String content, String value)? item,
  }) {
    return header?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String content, String value)? item,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileEditHeader value) header,
    required TResult Function(UserProfileEditItem value) item,
  }) {
    return header(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserProfileEditHeader value)? header,
    TResult Function(UserProfileEditItem value)? item,
  }) {
    return header?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileEditHeader value)? header,
    TResult Function(UserProfileEditItem value)? item,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(this);
    }
    return orElse();
  }
}

abstract class UserProfileEditHeader implements UserProfileEditUi {
  const factory UserProfileEditHeader({required String title}) =
      _$UserProfileEditHeader;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileEditHeaderCopyWith<UserProfileEditHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEditItemCopyWith<$Res> {
  factory $UserProfileEditItemCopyWith(
          UserProfileEditItem value, $Res Function(UserProfileEditItem) then) =
      _$UserProfileEditItemCopyWithImpl<$Res>;
  $Res call({String content, String value});
}

/// @nodoc
class _$UserProfileEditItemCopyWithImpl<$Res>
    extends _$UserProfileEditUiCopyWithImpl<$Res>
    implements $UserProfileEditItemCopyWith<$Res> {
  _$UserProfileEditItemCopyWithImpl(
      UserProfileEditItem _value, $Res Function(UserProfileEditItem) _then)
      : super(_value, (v) => _then(v as UserProfileEditItem));

  @override
  UserProfileEditItem get _value => super._value as UserProfileEditItem;

  @override
  $Res call({
    Object? content = freezed,
    Object? value = freezed,
  }) {
    return _then(UserProfileEditItem(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfileEditItem implements UserProfileEditItem {
  const _$UserProfileEditItem({required this.content, required this.value});

  @override
  final String content;
  @override
  final String value;

  @override
  String toString() {
    return 'UserProfileEditUi.item(content: $content, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileEditItem &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $UserProfileEditItemCopyWith<UserProfileEditItem> get copyWith =>
      _$UserProfileEditItemCopyWithImpl<UserProfileEditItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) header,
    required TResult Function(String content, String value) item,
  }) {
    return item(content, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String content, String value)? item,
  }) {
    return item?.call(content, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String content, String value)? item,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(content, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileEditHeader value) header,
    required TResult Function(UserProfileEditItem value) item,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserProfileEditHeader value)? header,
    TResult Function(UserProfileEditItem value)? item,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileEditHeader value)? header,
    TResult Function(UserProfileEditItem value)? item,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }
}

abstract class UserProfileEditItem implements UserProfileEditUi {
  const factory UserProfileEditItem(
      {required String content, required String value}) = _$UserProfileEditItem;

  String get content => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileEditItemCopyWith<UserProfileEditItem> get copyWith =>
      throw _privateConstructorUsedError;
}
