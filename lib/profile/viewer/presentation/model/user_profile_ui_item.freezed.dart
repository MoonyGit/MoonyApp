// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_ui_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileUiTearOff {
  const _$UserProfileUiTearOff();

  UserProfileHeader header({required String title}) {
    return UserProfileHeader(
      title: title,
    );
  }

  UserProfileItem item({required String title, required String icon}) {
    return UserProfileItem(
      title: title,
      icon: icon,
    );
  }

  UserProfileDescription description({required String content}) {
    return UserProfileDescription(
      content: content,
    );
  }
}

/// @nodoc
const $UserProfileUi = _$UserProfileUiTearOff();

/// @nodoc
mixin _$UserProfileUi {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) header,
    required TResult Function(String title, String icon) item,
    required TResult Function(String content) description,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileHeader value) header,
    required TResult Function(UserProfileItem value) item,
    required TResult Function(UserProfileDescription value) description,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileUiCopyWith<$Res> {
  factory $UserProfileUiCopyWith(
          UserProfileUi value, $Res Function(UserProfileUi) then) =
      _$UserProfileUiCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileUiCopyWithImpl<$Res>
    implements $UserProfileUiCopyWith<$Res> {
  _$UserProfileUiCopyWithImpl(this._value, this._then);

  final UserProfileUi _value;
  // ignore: unused_field
  final $Res Function(UserProfileUi) _then;
}

/// @nodoc
abstract class $UserProfileHeaderCopyWith<$Res> {
  factory $UserProfileHeaderCopyWith(
          UserProfileHeader value, $Res Function(UserProfileHeader) then) =
      _$UserProfileHeaderCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$UserProfileHeaderCopyWithImpl<$Res>
    extends _$UserProfileUiCopyWithImpl<$Res>
    implements $UserProfileHeaderCopyWith<$Res> {
  _$UserProfileHeaderCopyWithImpl(
      UserProfileHeader _value, $Res Function(UserProfileHeader) _then)
      : super(_value, (v) => _then(v as UserProfileHeader));

  @override
  UserProfileHeader get _value => super._value as UserProfileHeader;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(UserProfileHeader(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfileHeader implements UserProfileHeader {
  const _$UserProfileHeader({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'UserProfileUi.header(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileHeader &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $UserProfileHeaderCopyWith<UserProfileHeader> get copyWith =>
      _$UserProfileHeaderCopyWithImpl<UserProfileHeader>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) header,
    required TResult Function(String title, String icon) item,
    required TResult Function(String content) description,
  }) {
    return header(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
  }) {
    return header?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
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
    required TResult Function(UserProfileHeader value) header,
    required TResult Function(UserProfileItem value) item,
    required TResult Function(UserProfileDescription value) description,
  }) {
    return header(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
  }) {
    return header?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(this);
    }
    return orElse();
  }
}

abstract class UserProfileHeader implements UserProfileUi {
  const factory UserProfileHeader({required String title}) =
      _$UserProfileHeader;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileHeaderCopyWith<UserProfileHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileItemCopyWith<$Res> {
  factory $UserProfileItemCopyWith(
          UserProfileItem value, $Res Function(UserProfileItem) then) =
      _$UserProfileItemCopyWithImpl<$Res>;
  $Res call({String title, String icon});
}

/// @nodoc
class _$UserProfileItemCopyWithImpl<$Res>
    extends _$UserProfileUiCopyWithImpl<$Res>
    implements $UserProfileItemCopyWith<$Res> {
  _$UserProfileItemCopyWithImpl(
      UserProfileItem _value, $Res Function(UserProfileItem) _then)
      : super(_value, (v) => _then(v as UserProfileItem));

  @override
  UserProfileItem get _value => super._value as UserProfileItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? icon = freezed,
  }) {
    return _then(UserProfileItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfileItem implements UserProfileItem {
  const _$UserProfileItem({required this.title, required this.icon});

  @override
  final String title;
  @override
  final String icon;

  @override
  String toString() {
    return 'UserProfileUi.item(title: $title, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  $UserProfileItemCopyWith<UserProfileItem> get copyWith =>
      _$UserProfileItemCopyWithImpl<UserProfileItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) header,
    required TResult Function(String title, String icon) item,
    required TResult Function(String content) description,
  }) {
    return item(title, icon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
  }) {
    return item?.call(title, icon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(title, icon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileHeader value) header,
    required TResult Function(UserProfileItem value) item,
    required TResult Function(UserProfileDescription value) description,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }
}

abstract class UserProfileItem implements UserProfileUi {
  const factory UserProfileItem({required String title, required String icon}) =
      _$UserProfileItem;

  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileItemCopyWith<UserProfileItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDescriptionCopyWith<$Res> {
  factory $UserProfileDescriptionCopyWith(UserProfileDescription value,
          $Res Function(UserProfileDescription) then) =
      _$UserProfileDescriptionCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class _$UserProfileDescriptionCopyWithImpl<$Res>
    extends _$UserProfileUiCopyWithImpl<$Res>
    implements $UserProfileDescriptionCopyWith<$Res> {
  _$UserProfileDescriptionCopyWithImpl(UserProfileDescription _value,
      $Res Function(UserProfileDescription) _then)
      : super(_value, (v) => _then(v as UserProfileDescription));

  @override
  UserProfileDescription get _value => super._value as UserProfileDescription;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(UserProfileDescription(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfileDescription implements UserProfileDescription {
  const _$UserProfileDescription({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'UserProfileUi.description(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileDescription &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  $UserProfileDescriptionCopyWith<UserProfileDescription> get copyWith =>
      _$UserProfileDescriptionCopyWithImpl<UserProfileDescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) header,
    required TResult Function(String title, String icon) item,
    required TResult Function(String content) description,
  }) {
    return description(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
  }) {
    return description?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? header,
    TResult Function(String title, String icon)? item,
    TResult Function(String content)? description,
    required TResult orElse(),
  }) {
    if (description != null) {
      return description(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileHeader value) header,
    required TResult Function(UserProfileItem value) item,
    required TResult Function(UserProfileDescription value) description,
  }) {
    return description(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
  }) {
    return description?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileHeader value)? header,
    TResult Function(UserProfileItem value)? item,
    TResult Function(UserProfileDescription value)? description,
    required TResult orElse(),
  }) {
    if (description != null) {
      return description(this);
    }
    return orElse();
  }
}

abstract class UserProfileDescription implements UserProfileUi {
  const factory UserProfileDescription({required String content}) =
      _$UserProfileDescription;

  String get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDescriptionCopyWith<UserProfileDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
