
import 'package:bloc/bloc.dart';
import 'package:dokan_demo/data/repository/user_repository.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/profile_response/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_profile_event.dart';

part 'user_profile_state.dart';

part 'user_profile_bloc.freezed.dart';

part 'user_profile_bloc.g.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserRepository repository;

  UserProfileBloc(this.repository) : super(const UserProfileState()) {
    on<UserProfileEvent>((event, emit) async {
      await event.map(requestProfileInfo: (_RequestProfileInfo req) async {
        emit(state.copyWith(status: UserProfileStatus.loading));
        final result = await repository.getUserProfile();
        result.fold(
          (l) => emit(
            state.copyWith(
              errorResponse: l,
              status: UserProfileStatus.error,
            ),
          ),
          (r) {
            if (r.first.name != null && r.first.name != "" && r.first.id != null) {
              emit(
                state.copyWith(
                  profile: r.first,
                  status: UserProfileStatus.success,
                ),
              );
            }
          },
        );
      },
          editProfileInfo: (_EditProfileData req) async {
        emit(const UserProfileState());
        final result = await repository.editProfileInfo(name: req.name, firstName: req.firstName, lastName: req.lastName, email: req.email, description: req.description);
        result.fold(
          (l) => emit(
            state.copyWith(
              errorResponse: l,
              status: UserProfileStatus.error,
            ),
          ),
          (r) async {
            if (r.first.name != null && r.first.name != "" && r.first.id != null) {
              emit(
                state.copyWith(
                  status: UserProfileStatus.editProfileSuccess,
                ),
              );
              await Future.delayed(const Duration(milliseconds: 100));
              add(const UserProfileEvent.requestProfileInfo());
            }
          },
        );
      });
    });
  }
}
