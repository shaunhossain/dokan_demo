// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestProfileInfo,
    required TResult Function(String name, String firstName, String lastName,
            String email, String description)
        editProfileInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestProfileInfo,
    TResult? Function(String name, String firstName, String lastName,
            String email, String description)?
        editProfileInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestProfileInfo,
    TResult Function(String name, String firstName, String lastName,
            String email, String description)?
        editProfileInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestProfileInfo value) requestProfileInfo,
    required TResult Function(_EditProfileData value) editProfileInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestProfileInfo value)? requestProfileInfo,
    TResult? Function(_EditProfileData value)? editProfileInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestProfileInfo value)? requestProfileInfo,
    TResult Function(_EditProfileData value)? editProfileInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res, $Val extends UserProfileEvent>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestProfileInfoImplCopyWith<$Res> {
  factory _$$RequestProfileInfoImplCopyWith(_$RequestProfileInfoImpl value,
          $Res Function(_$RequestProfileInfoImpl) then) =
      __$$RequestProfileInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestProfileInfoImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$RequestProfileInfoImpl>
    implements _$$RequestProfileInfoImplCopyWith<$Res> {
  __$$RequestProfileInfoImplCopyWithImpl(_$RequestProfileInfoImpl _value,
      $Res Function(_$RequestProfileInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestProfileInfoImpl implements _RequestProfileInfo {
  const _$RequestProfileInfoImpl();

  @override
  String toString() {
    return 'UserProfileEvent.requestProfileInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestProfileInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestProfileInfo,
    required TResult Function(String name, String firstName, String lastName,
            String email, String description)
        editProfileInfo,
  }) {
    return requestProfileInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestProfileInfo,
    TResult? Function(String name, String firstName, String lastName,
            String email, String description)?
        editProfileInfo,
  }) {
    return requestProfileInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestProfileInfo,
    TResult Function(String name, String firstName, String lastName,
            String email, String description)?
        editProfileInfo,
    required TResult orElse(),
  }) {
    if (requestProfileInfo != null) {
      return requestProfileInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestProfileInfo value) requestProfileInfo,
    required TResult Function(_EditProfileData value) editProfileInfo,
  }) {
    return requestProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestProfileInfo value)? requestProfileInfo,
    TResult? Function(_EditProfileData value)? editProfileInfo,
  }) {
    return requestProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestProfileInfo value)? requestProfileInfo,
    TResult Function(_EditProfileData value)? editProfileInfo,
    required TResult orElse(),
  }) {
    if (requestProfileInfo != null) {
      return requestProfileInfo(this);
    }
    return orElse();
  }
}

abstract class _RequestProfileInfo implements UserProfileEvent {
  const factory _RequestProfileInfo() = _$RequestProfileInfoImpl;
}

/// @nodoc
abstract class _$$EditProfileDataImplCopyWith<$Res> {
  factory _$$EditProfileDataImplCopyWith(_$EditProfileDataImpl value,
          $Res Function(_$EditProfileDataImpl) then) =
      __$$EditProfileDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String firstName,
      String lastName,
      String email,
      String description});
}

/// @nodoc
class __$$EditProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$EditProfileDataImpl>
    implements _$$EditProfileDataImplCopyWith<$Res> {
  __$$EditProfileDataImplCopyWithImpl(
      _$EditProfileDataImpl _value, $Res Function(_$EditProfileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? description = null,
  }) {
    return _then(_$EditProfileDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProfileDataImpl implements _EditProfileData {
  const _$EditProfileDataImpl(
      {required this.name,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.description});

  @override
  final String name;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String description;

  @override
  String toString() {
    return 'UserProfileEvent.editProfileInfo(name: $name, firstName: $firstName, lastName: $lastName, email: $email, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, firstName, lastName, email, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileDataImplCopyWith<_$EditProfileDataImpl> get copyWith =>
      __$$EditProfileDataImplCopyWithImpl<_$EditProfileDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestProfileInfo,
    required TResult Function(String name, String firstName, String lastName,
            String email, String description)
        editProfileInfo,
  }) {
    return editProfileInfo(name, firstName, lastName, email, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestProfileInfo,
    TResult? Function(String name, String firstName, String lastName,
            String email, String description)?
        editProfileInfo,
  }) {
    return editProfileInfo?.call(name, firstName, lastName, email, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestProfileInfo,
    TResult Function(String name, String firstName, String lastName,
            String email, String description)?
        editProfileInfo,
    required TResult orElse(),
  }) {
    if (editProfileInfo != null) {
      return editProfileInfo(name, firstName, lastName, email, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestProfileInfo value) requestProfileInfo,
    required TResult Function(_EditProfileData value) editProfileInfo,
  }) {
    return editProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestProfileInfo value)? requestProfileInfo,
    TResult? Function(_EditProfileData value)? editProfileInfo,
  }) {
    return editProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestProfileInfo value)? requestProfileInfo,
    TResult Function(_EditProfileData value)? editProfileInfo,
    required TResult orElse(),
  }) {
    if (editProfileInfo != null) {
      return editProfileInfo(this);
    }
    return orElse();
  }
}

abstract class _EditProfileData implements UserProfileEvent {
  const factory _EditProfileData(
      {required final String name,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String description}) = _$EditProfileDataImpl;

  String get name;
  String get firstName;
  String get lastName;
  String get email;
  String get description;
  @JsonKey(ignore: true)
  _$$EditProfileDataImplCopyWith<_$EditProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileState _$UserProfileStateFromJson(Map<String, dynamic> json) {
  return _UserProfileState.fromJson(json);
}

/// @nodoc
mixin _$UserProfileState {
  UserProfileStatus get status => throw _privateConstructorUsedError;
  String get imagePickerError => throw _privateConstructorUsedError;
  ErrorResponse? get errorResponse => throw _privateConstructorUsedError;
  ProfileResponse? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
  @useResult
  $Res call(
      {UserProfileStatus status,
      String imagePickerError,
      ErrorResponse? errorResponse,
      ProfileResponse? profile});

  $ErrorResponseCopyWith<$Res>? get errorResponse;
  $ProfileResponseCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imagePickerError = null,
    Object? errorResponse = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserProfileStatus,
      imagePickerError: null == imagePickerError
          ? _value.imagePickerError
          : imagePickerError // ignore: cast_nullable_to_non_nullable
              as String,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<$Res>? get errorResponse {
    if (_value.errorResponse == null) {
      return null;
    }

    return $ErrorResponseCopyWith<$Res>(_value.errorResponse!, (value) {
      return _then(_value.copyWith(errorResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileResponseCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileResponseCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileStateImplCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$$UserProfileStateImplCopyWith(_$UserProfileStateImpl value,
          $Res Function(_$UserProfileStateImpl) then) =
      __$$UserProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfileStatus status,
      String imagePickerError,
      ErrorResponse? errorResponse,
      ProfileResponse? profile});

  @override
  $ErrorResponseCopyWith<$Res>? get errorResponse;
  @override
  $ProfileResponseCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$UserProfileStateImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileStateImpl>
    implements _$$UserProfileStateImplCopyWith<$Res> {
  __$$UserProfileStateImplCopyWithImpl(_$UserProfileStateImpl _value,
      $Res Function(_$UserProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imagePickerError = null,
    Object? errorResponse = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$UserProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserProfileStatus,
      imagePickerError: null == imagePickerError
          ? _value.imagePickerError
          : imagePickerError // ignore: cast_nullable_to_non_nullable
              as String,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileStateImpl implements _UserProfileState {
  const _$UserProfileStateImpl(
      {this.status = UserProfileStatus.initial,
      this.imagePickerError = '',
      this.errorResponse,
      this.profile});

  factory _$UserProfileStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileStateImplFromJson(json);

  @override
  @JsonKey()
  final UserProfileStatus status;
  @override
  @JsonKey()
  final String imagePickerError;
  @override
  final ErrorResponse? errorResponse;
  @override
  final ProfileResponse? profile;

  @override
  String toString() {
    return 'UserProfileState(status: $status, imagePickerError: $imagePickerError, errorResponse: $errorResponse, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imagePickerError, imagePickerError) ||
                other.imagePickerError == imagePickerError) &&
            (identical(other.errorResponse, errorResponse) ||
                other.errorResponse == errorResponse) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, imagePickerError, errorResponse, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      __$$UserProfileStateImplCopyWithImpl<_$UserProfileStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileStateImplToJson(
      this,
    );
  }
}

abstract class _UserProfileState implements UserProfileState {
  const factory _UserProfileState(
      {final UserProfileStatus status,
      final String imagePickerError,
      final ErrorResponse? errorResponse,
      final ProfileResponse? profile}) = _$UserProfileStateImpl;

  factory _UserProfileState.fromJson(Map<String, dynamic> json) =
      _$UserProfileStateImpl.fromJson;

  @override
  UserProfileStatus get status;
  @override
  String get imagePickerError;
  @override
  ErrorResponse? get errorResponse;
  @override
  ProfileResponse? get profile;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
