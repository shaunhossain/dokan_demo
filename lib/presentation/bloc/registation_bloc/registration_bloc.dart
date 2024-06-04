import 'package:bloc/bloc.dart';
import 'package:dokan_demo/data/repository/user_repository.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registration_event.dart';

part 'registration_state.dart';

part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final UserRepository repository;

  RegistrationBloc(this.repository) : super(const RegistrationState.initial()) {
    on<RegistrationEvent>((event, emit) async {
      await event.map(signUp: (_SignUp req) async {
        emit(const RegistrationState.isLoading());
        final result = await repository.signUp(username: req.userName, email: req.email, password: req.password);

        result.fold(
          (l) => emit(RegistrationState.isError(l)),
          (r) {
            if (r.first.code == 200) {
              emit(const RegistrationState.registered(true));
            } else {
              emit(const RegistrationState.registered(false));
            }
          },
        );
      });
    });
  }
}
