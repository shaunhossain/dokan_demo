// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() isLogin,
    required TResult Function() isGoogleSignIn,
    required TResult Function() isFacebookSignIn,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? isLogin,
    TResult? Function()? isGoogleSignIn,
    TResult? Function()? isFacebookSignIn,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? isLogin,
    TResult Function()? isGoogleSignIn,
    TResult Function()? isFacebookSignIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsGoogleSignIn value) isGoogleSignIn,
    required TResult Function(_IsFacebookSignIn value) isFacebookSignIn,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult? Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() isLogin,
    required TResult Function() isGoogleSignIn,
    required TResult Function() isFacebookSignIn,
    required TResult Function() logout,
  }) {
    return login(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? isLogin,
    TResult? Function()? isGoogleSignIn,
    TResult? Function()? isFacebookSignIn,
    TResult? Function()? logout,
  }) {
    return login?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? isLogin,
    TResult Function()? isGoogleSignIn,
    TResult Function()? isFacebookSignIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsGoogleSignIn value) isGoogleSignIn,
    required TResult Function(_IsFacebookSignIn value) isFacebookSignIn,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult? Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final String userName,
      required final String password}) = _$LoginImpl;

  String get userName;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsLoginImplCopyWith<$Res> {
  factory _$$IsLoginImplCopyWith(
          _$IsLoginImpl value, $Res Function(_$IsLoginImpl) then) =
      __$$IsLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$IsLoginImpl>
    implements _$$IsLoginImplCopyWith<$Res> {
  __$$IsLoginImplCopyWithImpl(
      _$IsLoginImpl _value, $Res Function(_$IsLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsLoginImpl implements _IsLogin {
  const _$IsLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.isLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() isLogin,
    required TResult Function() isGoogleSignIn,
    required TResult Function() isFacebookSignIn,
    required TResult Function() logout,
  }) {
    return isLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? isLogin,
    TResult? Function()? isGoogleSignIn,
    TResult? Function()? isFacebookSignIn,
    TResult? Function()? logout,
  }) {
    return isLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? isLogin,
    TResult Function()? isGoogleSignIn,
    TResult Function()? isFacebookSignIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (isLogin != null) {
      return isLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsGoogleSignIn value) isGoogleSignIn,
    required TResult Function(_IsFacebookSignIn value) isFacebookSignIn,
    required TResult Function(_Logout value) logout,
  }) {
    return isLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult? Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return isLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (isLogin != null) {
      return isLogin(this);
    }
    return orElse();
  }
}

abstract class _IsLogin implements AuthEvent {
  const factory _IsLogin() = _$IsLoginImpl;
}

/// @nodoc
abstract class _$$IsGoogleSignInImplCopyWith<$Res> {
  factory _$$IsGoogleSignInImplCopyWith(_$IsGoogleSignInImpl value,
          $Res Function(_$IsGoogleSignInImpl) then) =
      __$$IsGoogleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsGoogleSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$IsGoogleSignInImpl>
    implements _$$IsGoogleSignInImplCopyWith<$Res> {
  __$$IsGoogleSignInImplCopyWithImpl(
      _$IsGoogleSignInImpl _value, $Res Function(_$IsGoogleSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsGoogleSignInImpl implements _IsGoogleSignIn {
  const _$IsGoogleSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.isGoogleSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsGoogleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() isLogin,
    required TResult Function() isGoogleSignIn,
    required TResult Function() isFacebookSignIn,
    required TResult Function() logout,
  }) {
    return isGoogleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? isLogin,
    TResult? Function()? isGoogleSignIn,
    TResult? Function()? isFacebookSignIn,
    TResult? Function()? logout,
  }) {
    return isGoogleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? isLogin,
    TResult Function()? isGoogleSignIn,
    TResult Function()? isFacebookSignIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (isGoogleSignIn != null) {
      return isGoogleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsGoogleSignIn value) isGoogleSignIn,
    required TResult Function(_IsFacebookSignIn value) isFacebookSignIn,
    required TResult Function(_Logout value) logout,
  }) {
    return isGoogleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult? Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return isGoogleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (isGoogleSignIn != null) {
      return isGoogleSignIn(this);
    }
    return orElse();
  }
}

abstract class _IsGoogleSignIn implements AuthEvent {
  const factory _IsGoogleSignIn() = _$IsGoogleSignInImpl;
}

/// @nodoc
abstract class _$$IsFacebookSignInImplCopyWith<$Res> {
  factory _$$IsFacebookSignInImplCopyWith(_$IsFacebookSignInImpl value,
          $Res Function(_$IsFacebookSignInImpl) then) =
      __$$IsFacebookSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsFacebookSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$IsFacebookSignInImpl>
    implements _$$IsFacebookSignInImplCopyWith<$Res> {
  __$$IsFacebookSignInImplCopyWithImpl(_$IsFacebookSignInImpl _value,
      $Res Function(_$IsFacebookSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsFacebookSignInImpl implements _IsFacebookSignIn {
  const _$IsFacebookSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.isFacebookSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsFacebookSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() isLogin,
    required TResult Function() isGoogleSignIn,
    required TResult Function() isFacebookSignIn,
    required TResult Function() logout,
  }) {
    return isFacebookSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? isLogin,
    TResult? Function()? isGoogleSignIn,
    TResult? Function()? isFacebookSignIn,
    TResult? Function()? logout,
  }) {
    return isFacebookSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? isLogin,
    TResult Function()? isGoogleSignIn,
    TResult Function()? isFacebookSignIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (isFacebookSignIn != null) {
      return isFacebookSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsGoogleSignIn value) isGoogleSignIn,
    required TResult Function(_IsFacebookSignIn value) isFacebookSignIn,
    required TResult Function(_Logout value) logout,
  }) {
    return isFacebookSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult? Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return isFacebookSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (isFacebookSignIn != null) {
      return isFacebookSignIn(this);
    }
    return orElse();
  }
}

abstract class _IsFacebookSignIn implements AuthEvent {
  const factory _IsFacebookSignIn() = _$IsFacebookSignInImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) login,
    required TResult Function() isLogin,
    required TResult Function() isGoogleSignIn,
    required TResult Function() isFacebookSignIn,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? login,
    TResult? Function()? isLogin,
    TResult? Function()? isGoogleSignIn,
    TResult? Function()? isFacebookSignIn,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? login,
    TResult Function()? isLogin,
    TResult Function()? isGoogleSignIn,
    TResult Function()? isFacebookSignIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_IsLogin value) isLogin,
    required TResult Function(_IsGoogleSignIn value) isGoogleSignIn,
    required TResult Function(_IsFacebookSignIn value) isFacebookSignIn,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_IsLogin value)? isLogin,
    TResult? Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult? Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_IsLogin value)? isLogin,
    TResult Function(_IsGoogleSignIn value)? isGoogleSignIn,
    TResult Function(_IsFacebookSignIn value)? isFacebookSignIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  ErrorResponse? get errorResponse => throw _privateConstructorUsedError;
  LoginResponse? get loginResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthStatus status,
      bool isAuthenticated,
      ErrorResponse? errorResponse,
      LoginResponse? loginResponse});

  $ErrorResponseCopyWith<$Res>? get errorResponse;
  $LoginResponseCopyWith<$Res>? get loginResponse;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthenticated = null,
    Object? errorResponse = freezed,
    Object? loginResponse = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
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
  $LoginResponseCopyWith<$Res>? get loginResponse {
    if (_value.loginResponse == null) {
      return null;
    }

    return $LoginResponseCopyWith<$Res>(_value.loginResponse!, (value) {
      return _then(_value.copyWith(loginResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthStatus status,
      bool isAuthenticated,
      ErrorResponse? errorResponse,
      LoginResponse? loginResponse});

  @override
  $ErrorResponseCopyWith<$Res>? get errorResponse;
  @override
  $LoginResponseCopyWith<$Res>? get loginResponse;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthenticated = null,
    Object? errorResponse = freezed,
    Object? loginResponse = freezed,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.status = AuthStatus.initial,
      this.isAuthenticated = false,
      this.errorResponse,
      this.loginResponse});

  factory _$AuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateImplFromJson(json);

  @override
  @JsonKey()
  final AuthStatus status;
  @override
  @JsonKey()
  final bool isAuthenticated;
  @override
  final ErrorResponse? errorResponse;
  @override
  final LoginResponse? loginResponse;

  @override
  String toString() {
    return 'AuthState(status: $status, isAuthenticated: $isAuthenticated, errorResponse: $errorResponse, loginResponse: $loginResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.errorResponse, errorResponse) ||
                other.errorResponse == errorResponse) &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, isAuthenticated, errorResponse, loginResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateImplToJson(
      this,
    );
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final AuthStatus status,
      final bool isAuthenticated,
      final ErrorResponse? errorResponse,
      final LoginResponse? loginResponse}) = _$AuthStateImpl;

  factory _AuthState.fromJson(Map<String, dynamic> json) =
      _$AuthStateImpl.fromJson;

  @override
  AuthStatus get status;
  @override
  bool get isAuthenticated;
  @override
  ErrorResponse? get errorResponse;
  @override
  LoginResponse? get loginResponse;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
