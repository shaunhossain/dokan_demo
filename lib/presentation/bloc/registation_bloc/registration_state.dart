part of 'registration_bloc.dart';


@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.isLoading() = _IsLoading;
  const factory RegistrationState.isError(RegistrationErrorResponse errorResponse) =_IsError;
  const factory RegistrationState. registered(bool status,RegistrationResponse? registration) = _Registered;
}