import 'package:bloc/bloc.dart';
import 'package:dokan_demo/core/cache/auth_cache_manager.dart';
import 'package:dokan_demo/data/repository/auth_repository.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/login_response/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(const AuthState()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
          login: (_Login value) async {
            emit(state.copyWith(status: AuthStatus.loading));
            final result = await repository.login(
                userName: value.userName, password: value.password);

            result.fold(
              (l) => emit(
                state.copyWith(
                  errorResponse: l,
                  status: AuthStatus.error,
                ),
              ),
              (r) {
                if (r.first.token != null && r.first.token != "") {
                  AuthCacheManager.setToken(token: r.first.token);
                  AuthCacheManager.setUserEmail(email: r.first.userEmail!);
                  emit(
                    state.copyWith(
                      loginResponse: r.first,
                      isAuthenticated: true,
                      status: AuthStatus.success,
                    ),
                  );
                } else {
                  emit(
                    state.copyWith(
                      loginResponse: r.first,
                      isAuthenticated: false,
                      status: AuthStatus.error,
                    ),
                  );
                }
              },
            );
          },
          isLogin: (_IsLogin value) async {
            emit(const AuthState());
            String? token = await AuthCacheManager.getToken();
            if (token != null && token.isNotEmpty) {
              emit(
                state.copyWith(
                  loginResponse: state.loginResponse,
                  isAuthenticated: true,
                  status: AuthStatus.success,
                ),
              );
            } else {
              emit(
                state.copyWith(
                  isAuthenticated: false,
                  status: AuthStatus.error,
                ),
              );
            }
          },
          logout: (_Logout value) async {
            emit(const AuthState());
            AuthCacheManager.signOut();
            //await Future.delayed(const Duration(milliseconds: 100));
            //add(const AuthEvent.isLogin());
          },
          isGoogleSignIn: (_IsGoogleSignIn value) {},
          isFacebookSignIn: (_IsFacebookSignIn value) {});
    });
  }
}
