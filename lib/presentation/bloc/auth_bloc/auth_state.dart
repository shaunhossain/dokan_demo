part of 'auth_bloc.dart';


enum AuthStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == AuthStatus.initial;
  bool get isLoading => this == AuthStatus.loading;
  bool get isSuccess => this == AuthStatus.success;
  bool get isFailure => this == AuthStatus.error;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    @Default(false) bool isAuthenticated,
    ErrorResponse? errorResponse,
    LoginResponse? loginResponse,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}