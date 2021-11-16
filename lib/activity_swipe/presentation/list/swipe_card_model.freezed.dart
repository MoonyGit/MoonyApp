// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swipe_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardInfoModelTearOff {
  const _$CardInfoModelTearOff();

  CardInfoModelActivityInfo mainInfo(
      {required String imageUrl,
      required String activityCategoryImageUri,
      required String userName,
      required int userAge,
      required bool userVerified,
      required String activityName,
      required int activityTargetNumber,
      required String? activityLocation,
      required DateTime? activityTargetDate}) {
    return CardInfoModelActivityInfo(
      imageUrl: imageUrl,
      activityCategoryImageUri: activityCategoryImageUri,
      userName: userName,
      userAge: userAge,
      userVerified: userVerified,
      activityName: activityName,
      activityTargetNumber: activityTargetNumber,
      activityLocation: activityLocation,
      activityTargetDate: activityTargetDate,
    );
  }

  CardInfoModelUserInfo userInfo(
      {required String imageUrl,
      required String userName,
      required int userAge,
      required bool userVerified,
      required String location,
      required int distance}) {
    return CardInfoModelUserInfo(
      imageUrl: imageUrl,
      userName: userName,
      userAge: userAge,
      userVerified: userVerified,
      location: location,
      distance: distance,
    );
  }

  CardInfoModelUserHobby userHobby(
      {required String imageUrl,
      required String userName,
      required int userAge,
      required bool userVerified,
      required List<String> userHobbyList}) {
    return CardInfoModelUserHobby(
      imageUrl: imageUrl,
      userName: userName,
      userAge: userAge,
      userVerified: userVerified,
      userHobbyList: userHobbyList,
    );
  }

  CardInfoModelActivityDesc activityDesc(
      {required String imageUrl,
      required String activityName,
      required String activityCategoryImageUri,
      required String? activityMoreInfoLink,
      required String activityDesc}) {
    return CardInfoModelActivityDesc(
      imageUrl: imageUrl,
      activityName: activityName,
      activityCategoryImageUri: activityCategoryImageUri,
      activityMoreInfoLink: activityMoreInfoLink,
      activityDesc: activityDesc,
    );
  }
}

/// @nodoc
const $CardInfoModel = _$CardInfoModelTearOff();

/// @nodoc
mixin _$CardInfoModel {
  String get imageUrl => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)
        mainInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)
        userInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)
        userHobby,
    required TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)
        activityDesc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardInfoModelActivityInfo value) mainInfo,
    required TResult Function(CardInfoModelUserInfo value) userInfo,
    required TResult Function(CardInfoModelUserHobby value) userHobby,
    required TResult Function(CardInfoModelActivityDesc value) activityDesc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardInfoModelCopyWith<CardInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInfoModelCopyWith<$Res> {
  factory $CardInfoModelCopyWith(
          CardInfoModel value, $Res Function(CardInfoModel) then) =
      _$CardInfoModelCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class _$CardInfoModelCopyWithImpl<$Res>
    implements $CardInfoModelCopyWith<$Res> {
  _$CardInfoModelCopyWithImpl(this._value, this._then);

  final CardInfoModel _value;
  // ignore: unused_field
  final $Res Function(CardInfoModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $CardInfoModelActivityInfoCopyWith<$Res>
    implements $CardInfoModelCopyWith<$Res> {
  factory $CardInfoModelActivityInfoCopyWith(CardInfoModelActivityInfo value,
          $Res Function(CardInfoModelActivityInfo) then) =
      _$CardInfoModelActivityInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String activityCategoryImageUri,
      String userName,
      int userAge,
      bool userVerified,
      String activityName,
      int activityTargetNumber,
      String? activityLocation,
      DateTime? activityTargetDate});
}

/// @nodoc
class _$CardInfoModelActivityInfoCopyWithImpl<$Res>
    extends _$CardInfoModelCopyWithImpl<$Res>
    implements $CardInfoModelActivityInfoCopyWith<$Res> {
  _$CardInfoModelActivityInfoCopyWithImpl(CardInfoModelActivityInfo _value,
      $Res Function(CardInfoModelActivityInfo) _then)
      : super(_value, (v) => _then(v as CardInfoModelActivityInfo));

  @override
  CardInfoModelActivityInfo get _value =>
      super._value as CardInfoModelActivityInfo;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? activityCategoryImageUri = freezed,
    Object? userName = freezed,
    Object? userAge = freezed,
    Object? userVerified = freezed,
    Object? activityName = freezed,
    Object? activityTargetNumber = freezed,
    Object? activityLocation = freezed,
    Object? activityTargetDate = freezed,
  }) {
    return _then(CardInfoModelActivityInfo(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      activityCategoryImageUri: activityCategoryImageUri == freezed
          ? _value.activityCategoryImageUri
          : activityCategoryImageUri // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAge: userAge == freezed
          ? _value.userAge
          : userAge // ignore: cast_nullable_to_non_nullable
              as int,
      userVerified: userVerified == freezed
          ? _value.userVerified
          : userVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      activityName: activityName == freezed
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String,
      activityTargetNumber: activityTargetNumber == freezed
          ? _value.activityTargetNumber
          : activityTargetNumber // ignore: cast_nullable_to_non_nullable
              as int,
      activityLocation: activityLocation == freezed
          ? _value.activityLocation
          : activityLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      activityTargetDate: activityTargetDate == freezed
          ? _value.activityTargetDate
          : activityTargetDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CardInfoModelActivityInfo implements CardInfoModelActivityInfo {
  const _$CardInfoModelActivityInfo(
      {required this.imageUrl,
      required this.activityCategoryImageUri,
      required this.userName,
      required this.userAge,
      required this.userVerified,
      required this.activityName,
      required this.activityTargetNumber,
      required this.activityLocation,
      required this.activityTargetDate});

  @override
  final String imageUrl;
  @override
  final String activityCategoryImageUri;
  @override
  final String userName;
  @override
  final int userAge;
  @override
  final bool userVerified;
  @override
  final String activityName;
  @override
  final int activityTargetNumber;
  @override
  final String? activityLocation;
  @override
  final DateTime? activityTargetDate;

  @override
  String toString() {
    return 'CardInfoModel.mainInfo(imageUrl: $imageUrl, activityCategoryImageUri: $activityCategoryImageUri, userName: $userName, userAge: $userAge, userVerified: $userVerified, activityName: $activityName, activityTargetNumber: $activityTargetNumber, activityLocation: $activityLocation, activityTargetDate: $activityTargetDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardInfoModelActivityInfo &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(
                    other.activityCategoryImageUri, activityCategoryImageUri) ||
                const DeepCollectionEquality().equals(
                    other.activityCategoryImageUri,
                    activityCategoryImageUri)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userAge, userAge) ||
                const DeepCollectionEquality()
                    .equals(other.userAge, userAge)) &&
            (identical(other.userVerified, userVerified) ||
                const DeepCollectionEquality()
                    .equals(other.userVerified, userVerified)) &&
            (identical(other.activityName, activityName) ||
                const DeepCollectionEquality()
                    .equals(other.activityName, activityName)) &&
            (identical(other.activityTargetNumber, activityTargetNumber) ||
                const DeepCollectionEquality().equals(
                    other.activityTargetNumber, activityTargetNumber)) &&
            (identical(other.activityLocation, activityLocation) ||
                const DeepCollectionEquality()
                    .equals(other.activityLocation, activityLocation)) &&
            (identical(other.activityTargetDate, activityTargetDate) ||
                const DeepCollectionEquality()
                    .equals(other.activityTargetDate, activityTargetDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(activityCategoryImageUri) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userAge) ^
      const DeepCollectionEquality().hash(userVerified) ^
      const DeepCollectionEquality().hash(activityName) ^
      const DeepCollectionEquality().hash(activityTargetNumber) ^
      const DeepCollectionEquality().hash(activityLocation) ^
      const DeepCollectionEquality().hash(activityTargetDate);

  @JsonKey(ignore: true)
  @override
  $CardInfoModelActivityInfoCopyWith<CardInfoModelActivityInfo> get copyWith =>
      _$CardInfoModelActivityInfoCopyWithImpl<CardInfoModelActivityInfo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)
        mainInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)
        userInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)
        userHobby,
    required TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)
        activityDesc,
  }) {
    return mainInfo(
        imageUrl,
        activityCategoryImageUri,
        userName,
        userAge,
        userVerified,
        activityName,
        activityTargetNumber,
        activityLocation,
        activityTargetDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
  }) {
    return mainInfo?.call(
        imageUrl,
        activityCategoryImageUri,
        userName,
        userAge,
        userVerified,
        activityName,
        activityTargetNumber,
        activityLocation,
        activityTargetDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
    required TResult orElse(),
  }) {
    if (mainInfo != null) {
      return mainInfo(
          imageUrl,
          activityCategoryImageUri,
          userName,
          userAge,
          userVerified,
          activityName,
          activityTargetNumber,
          activityLocation,
          activityTargetDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardInfoModelActivityInfo value) mainInfo,
    required TResult Function(CardInfoModelUserInfo value) userInfo,
    required TResult Function(CardInfoModelUserHobby value) userHobby,
    required TResult Function(CardInfoModelActivityDesc value) activityDesc,
  }) {
    return mainInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
  }) {
    return mainInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
    required TResult orElse(),
  }) {
    if (mainInfo != null) {
      return mainInfo(this);
    }
    return orElse();
  }
}

abstract class CardInfoModelActivityInfo implements CardInfoModel {
  const factory CardInfoModelActivityInfo(
      {required String imageUrl,
      required String activityCategoryImageUri,
      required String userName,
      required int userAge,
      required bool userVerified,
      required String activityName,
      required int activityTargetNumber,
      required String? activityLocation,
      required DateTime? activityTargetDate}) = _$CardInfoModelActivityInfo;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  String get activityCategoryImageUri => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get userAge => throw _privateConstructorUsedError;
  bool get userVerified => throw _privateConstructorUsedError;
  String get activityName => throw _privateConstructorUsedError;
  int get activityTargetNumber => throw _privateConstructorUsedError;
  String? get activityLocation => throw _privateConstructorUsedError;
  DateTime? get activityTargetDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CardInfoModelActivityInfoCopyWith<CardInfoModelActivityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInfoModelUserInfoCopyWith<$Res>
    implements $CardInfoModelCopyWith<$Res> {
  factory $CardInfoModelUserInfoCopyWith(CardInfoModelUserInfo value,
          $Res Function(CardInfoModelUserInfo) then) =
      _$CardInfoModelUserInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String userName,
      int userAge,
      bool userVerified,
      String location,
      int distance});
}

/// @nodoc
class _$CardInfoModelUserInfoCopyWithImpl<$Res>
    extends _$CardInfoModelCopyWithImpl<$Res>
    implements $CardInfoModelUserInfoCopyWith<$Res> {
  _$CardInfoModelUserInfoCopyWithImpl(
      CardInfoModelUserInfo _value, $Res Function(CardInfoModelUserInfo) _then)
      : super(_value, (v) => _then(v as CardInfoModelUserInfo));

  @override
  CardInfoModelUserInfo get _value => super._value as CardInfoModelUserInfo;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? userName = freezed,
    Object? userAge = freezed,
    Object? userVerified = freezed,
    Object? location = freezed,
    Object? distance = freezed,
  }) {
    return _then(CardInfoModelUserInfo(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAge: userAge == freezed
          ? _value.userAge
          : userAge // ignore: cast_nullable_to_non_nullable
              as int,
      userVerified: userVerified == freezed
          ? _value.userVerified
          : userVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CardInfoModelUserInfo implements CardInfoModelUserInfo {
  const _$CardInfoModelUserInfo(
      {required this.imageUrl,
      required this.userName,
      required this.userAge,
      required this.userVerified,
      required this.location,
      required this.distance});

  @override
  final String imageUrl;
  @override
  final String userName;
  @override
  final int userAge;
  @override
  final bool userVerified;
  @override
  final String location;
  @override
  final int distance;

  @override
  String toString() {
    return 'CardInfoModel.userInfo(imageUrl: $imageUrl, userName: $userName, userAge: $userAge, userVerified: $userVerified, location: $location, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardInfoModelUserInfo &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userAge, userAge) ||
                const DeepCollectionEquality()
                    .equals(other.userAge, userAge)) &&
            (identical(other.userVerified, userVerified) ||
                const DeepCollectionEquality()
                    .equals(other.userVerified, userVerified)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userAge) ^
      const DeepCollectionEquality().hash(userVerified) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  $CardInfoModelUserInfoCopyWith<CardInfoModelUserInfo> get copyWith =>
      _$CardInfoModelUserInfoCopyWithImpl<CardInfoModelUserInfo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)
        mainInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)
        userInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)
        userHobby,
    required TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)
        activityDesc,
  }) {
    return userInfo(
        imageUrl, userName, userAge, userVerified, location, distance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
  }) {
    return userInfo?.call(
        imageUrl, userName, userAge, userVerified, location, distance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo(
          imageUrl, userName, userAge, userVerified, location, distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardInfoModelActivityInfo value) mainInfo,
    required TResult Function(CardInfoModelUserInfo value) userInfo,
    required TResult Function(CardInfoModelUserHobby value) userHobby,
    required TResult Function(CardInfoModelActivityDesc value) activityDesc,
  }) {
    return userInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
  }) {
    return userInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
    required TResult orElse(),
  }) {
    if (userInfo != null) {
      return userInfo(this);
    }
    return orElse();
  }
}

abstract class CardInfoModelUserInfo implements CardInfoModel {
  const factory CardInfoModelUserInfo(
      {required String imageUrl,
      required String userName,
      required int userAge,
      required bool userVerified,
      required String location,
      required int distance}) = _$CardInfoModelUserInfo;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get userAge => throw _privateConstructorUsedError;
  bool get userVerified => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CardInfoModelUserInfoCopyWith<CardInfoModelUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInfoModelUserHobbyCopyWith<$Res>
    implements $CardInfoModelCopyWith<$Res> {
  factory $CardInfoModelUserHobbyCopyWith(CardInfoModelUserHobby value,
          $Res Function(CardInfoModelUserHobby) then) =
      _$CardInfoModelUserHobbyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String userName,
      int userAge,
      bool userVerified,
      List<String> userHobbyList});
}

/// @nodoc
class _$CardInfoModelUserHobbyCopyWithImpl<$Res>
    extends _$CardInfoModelCopyWithImpl<$Res>
    implements $CardInfoModelUserHobbyCopyWith<$Res> {
  _$CardInfoModelUserHobbyCopyWithImpl(CardInfoModelUserHobby _value,
      $Res Function(CardInfoModelUserHobby) _then)
      : super(_value, (v) => _then(v as CardInfoModelUserHobby));

  @override
  CardInfoModelUserHobby get _value => super._value as CardInfoModelUserHobby;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? userName = freezed,
    Object? userAge = freezed,
    Object? userVerified = freezed,
    Object? userHobbyList = freezed,
  }) {
    return _then(CardInfoModelUserHobby(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAge: userAge == freezed
          ? _value.userAge
          : userAge // ignore: cast_nullable_to_non_nullable
              as int,
      userVerified: userVerified == freezed
          ? _value.userVerified
          : userVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      userHobbyList: userHobbyList == freezed
          ? _value.userHobbyList
          : userHobbyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CardInfoModelUserHobby implements CardInfoModelUserHobby {
  const _$CardInfoModelUserHobby(
      {required this.imageUrl,
      required this.userName,
      required this.userAge,
      required this.userVerified,
      required this.userHobbyList});

  @override
  final String imageUrl;
  @override
  final String userName;
  @override
  final int userAge;
  @override
  final bool userVerified;
  @override
  final List<String> userHobbyList;

  @override
  String toString() {
    return 'CardInfoModel.userHobby(imageUrl: $imageUrl, userName: $userName, userAge: $userAge, userVerified: $userVerified, userHobbyList: $userHobbyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardInfoModelUserHobby &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userAge, userAge) ||
                const DeepCollectionEquality()
                    .equals(other.userAge, userAge)) &&
            (identical(other.userVerified, userVerified) ||
                const DeepCollectionEquality()
                    .equals(other.userVerified, userVerified)) &&
            (identical(other.userHobbyList, userHobbyList) ||
                const DeepCollectionEquality()
                    .equals(other.userHobbyList, userHobbyList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userAge) ^
      const DeepCollectionEquality().hash(userVerified) ^
      const DeepCollectionEquality().hash(userHobbyList);

  @JsonKey(ignore: true)
  @override
  $CardInfoModelUserHobbyCopyWith<CardInfoModelUserHobby> get copyWith =>
      _$CardInfoModelUserHobbyCopyWithImpl<CardInfoModelUserHobby>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)
        mainInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)
        userInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)
        userHobby,
    required TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)
        activityDesc,
  }) {
    return userHobby(imageUrl, userName, userAge, userVerified, userHobbyList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
  }) {
    return userHobby?.call(
        imageUrl, userName, userAge, userVerified, userHobbyList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
    required TResult orElse(),
  }) {
    if (userHobby != null) {
      return userHobby(
          imageUrl, userName, userAge, userVerified, userHobbyList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardInfoModelActivityInfo value) mainInfo,
    required TResult Function(CardInfoModelUserInfo value) userInfo,
    required TResult Function(CardInfoModelUserHobby value) userHobby,
    required TResult Function(CardInfoModelActivityDesc value) activityDesc,
  }) {
    return userHobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
  }) {
    return userHobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
    required TResult orElse(),
  }) {
    if (userHobby != null) {
      return userHobby(this);
    }
    return orElse();
  }
}

abstract class CardInfoModelUserHobby implements CardInfoModel {
  const factory CardInfoModelUserHobby(
      {required String imageUrl,
      required String userName,
      required int userAge,
      required bool userVerified,
      required List<String> userHobbyList}) = _$CardInfoModelUserHobby;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get userAge => throw _privateConstructorUsedError;
  bool get userVerified => throw _privateConstructorUsedError;
  List<String> get userHobbyList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CardInfoModelUserHobbyCopyWith<CardInfoModelUserHobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInfoModelActivityDescCopyWith<$Res>
    implements $CardInfoModelCopyWith<$Res> {
  factory $CardInfoModelActivityDescCopyWith(CardInfoModelActivityDesc value,
          $Res Function(CardInfoModelActivityDesc) then) =
      _$CardInfoModelActivityDescCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String activityName,
      String activityCategoryImageUri,
      String? activityMoreInfoLink,
      String activityDesc});
}

/// @nodoc
class _$CardInfoModelActivityDescCopyWithImpl<$Res>
    extends _$CardInfoModelCopyWithImpl<$Res>
    implements $CardInfoModelActivityDescCopyWith<$Res> {
  _$CardInfoModelActivityDescCopyWithImpl(CardInfoModelActivityDesc _value,
      $Res Function(CardInfoModelActivityDesc) _then)
      : super(_value, (v) => _then(v as CardInfoModelActivityDesc));

  @override
  CardInfoModelActivityDesc get _value =>
      super._value as CardInfoModelActivityDesc;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? activityName = freezed,
    Object? activityCategoryImageUri = freezed,
    Object? activityMoreInfoLink = freezed,
    Object? activityDesc = freezed,
  }) {
    return _then(CardInfoModelActivityDesc(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      activityName: activityName == freezed
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String,
      activityCategoryImageUri: activityCategoryImageUri == freezed
          ? _value.activityCategoryImageUri
          : activityCategoryImageUri // ignore: cast_nullable_to_non_nullable
              as String,
      activityMoreInfoLink: activityMoreInfoLink == freezed
          ? _value.activityMoreInfoLink
          : activityMoreInfoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      activityDesc: activityDesc == freezed
          ? _value.activityDesc
          : activityDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardInfoModelActivityDesc implements CardInfoModelActivityDesc {
  const _$CardInfoModelActivityDesc(
      {required this.imageUrl,
      required this.activityName,
      required this.activityCategoryImageUri,
      required this.activityMoreInfoLink,
      required this.activityDesc});

  @override
  final String imageUrl;
  @override
  final String activityName;
  @override
  final String activityCategoryImageUri;
  @override
  final String? activityMoreInfoLink;
  @override
  final String activityDesc;

  @override
  String toString() {
    return 'CardInfoModel.activityDesc(imageUrl: $imageUrl, activityName: $activityName, activityCategoryImageUri: $activityCategoryImageUri, activityMoreInfoLink: $activityMoreInfoLink, activityDesc: $activityDesc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardInfoModelActivityDesc &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.activityName, activityName) ||
                const DeepCollectionEquality()
                    .equals(other.activityName, activityName)) &&
            (identical(
                    other.activityCategoryImageUri, activityCategoryImageUri) ||
                const DeepCollectionEquality().equals(
                    other.activityCategoryImageUri,
                    activityCategoryImageUri)) &&
            (identical(other.activityMoreInfoLink, activityMoreInfoLink) ||
                const DeepCollectionEquality().equals(
                    other.activityMoreInfoLink, activityMoreInfoLink)) &&
            (identical(other.activityDesc, activityDesc) ||
                const DeepCollectionEquality()
                    .equals(other.activityDesc, activityDesc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(activityName) ^
      const DeepCollectionEquality().hash(activityCategoryImageUri) ^
      const DeepCollectionEquality().hash(activityMoreInfoLink) ^
      const DeepCollectionEquality().hash(activityDesc);

  @JsonKey(ignore: true)
  @override
  $CardInfoModelActivityDescCopyWith<CardInfoModelActivityDesc> get copyWith =>
      _$CardInfoModelActivityDescCopyWithImpl<CardInfoModelActivityDesc>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)
        mainInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)
        userInfo,
    required TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)
        userHobby,
    required TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)
        activityDesc,
  }) {
    return activityDesc(imageUrl, activityName, activityCategoryImageUri,
        activityMoreInfoLink, this.activityDesc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
  }) {
    return activityDesc?.call(imageUrl, activityName, activityCategoryImageUri,
        activityMoreInfoLink, this.activityDesc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String imageUrl,
            String activityCategoryImageUri,
            String userName,
            int userAge,
            bool userVerified,
            String activityName,
            int activityTargetNumber,
            String? activityLocation,
            DateTime? activityTargetDate)?
        mainInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, String location, int distance)?
        userInfo,
    TResult Function(String imageUrl, String userName, int userAge,
            bool userVerified, List<String> userHobbyList)?
        userHobby,
    TResult Function(
            String imageUrl,
            String activityName,
            String activityCategoryImageUri,
            String? activityMoreInfoLink,
            String activityDesc)?
        activityDesc,
    required TResult orElse(),
  }) {
    if (activityDesc != null) {
      return activityDesc(imageUrl, activityName, activityCategoryImageUri,
          activityMoreInfoLink, this.activityDesc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardInfoModelActivityInfo value) mainInfo,
    required TResult Function(CardInfoModelUserInfo value) userInfo,
    required TResult Function(CardInfoModelUserHobby value) userHobby,
    required TResult Function(CardInfoModelActivityDesc value) activityDesc,
  }) {
    return activityDesc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
  }) {
    return activityDesc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardInfoModelActivityInfo value)? mainInfo,
    TResult Function(CardInfoModelUserInfo value)? userInfo,
    TResult Function(CardInfoModelUserHobby value)? userHobby,
    TResult Function(CardInfoModelActivityDesc value)? activityDesc,
    required TResult orElse(),
  }) {
    if (activityDesc != null) {
      return activityDesc(this);
    }
    return orElse();
  }
}

abstract class CardInfoModelActivityDesc implements CardInfoModel {
  const factory CardInfoModelActivityDesc(
      {required String imageUrl,
      required String activityName,
      required String activityCategoryImageUri,
      required String? activityMoreInfoLink,
      required String activityDesc}) = _$CardInfoModelActivityDesc;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  String get activityName => throw _privateConstructorUsedError;
  String get activityCategoryImageUri => throw _privateConstructorUsedError;
  String? get activityMoreInfoLink => throw _privateConstructorUsedError;
  String get activityDesc => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CardInfoModelActivityDescCopyWith<CardInfoModelActivityDesc> get copyWith =>
      throw _privateConstructorUsedError;
}
