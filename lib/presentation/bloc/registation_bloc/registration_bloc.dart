import 'package:bloc/bloc.dart';
import 'package:dokan_demo/data/repository/auth_repository.dart';
import 'package:dokan_demo/domain/registration_error_response/registration_error_response.dart';
import 'package:dokan_demo/domain/registration_response/registration_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registration_event.dart';

part 'registration_state.dart';

part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthRepository repository;

  RegistrationBloc(this.repository) : super(const RegistrationState.initial()) {
    on<RegistrationEvent>((event, emit) async {
      await event.map(signUp: (_SignUp req) async {
        emit(const RegistrationState.isLoading());
        if(req.password == req.confirmPassword){
          final result = await repository.signUp(username: req.userName, email: req.email, password: req.password);

          result.fold(
                (l) => emit(RegistrationState.isError(l)),
                (r) {
              if (r.first.code == 200) {
                emit(RegistrationState.registered(true,r.first));
              } else {
                emit(const RegistrationState.registered(false,null));
              }
            },
          );
        }else{
          emit(const RegistrationState.isError(RegistrationErrorResponse(
            message: "Password doesn't match"
          )));
        }
      });
    });
  }
}
