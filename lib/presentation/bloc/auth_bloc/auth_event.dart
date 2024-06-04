part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required String userName , required String password}) = _Login;
  const factory AuthEvent.isLogin() = _IsLogin;
  const factory AuthEvent.isGoogleSignIn() = _IsGoogleSignIn;
  const factory AuthEvent.isFacebookSignIn() = _IsFacebookSignIn;
  const factory AuthEvent.logout() = _Logout;
}