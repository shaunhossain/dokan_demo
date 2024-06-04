part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.signUp({required String firstName,
    required String userName,
    required String email,
    required String password}) = _SignUp;
}