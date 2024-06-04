// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/cache/auth_cache_manager.dart' as _i5;
import 'core/endpoints/api_endpoints.dart' as _i4;
import 'data/api_service/i_user_api_service.dart' as _i8;
import 'data/api_service/user_api_service.dart' as _i7;
import 'presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart' as _i3;
import 'presentation/bloc/trigger_bottom_sheet_cubit/trigger_bottom_sheet_cubit.dart'
    as _i6;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.BottomNavigationBloc>(() => _i3.BottomNavigationBloc());
  gh.factory<_i4.ApiEndpoints>(() => _i4.ApiEndpoints());
  gh.factory<_i5.AuthCacheManager>(() => _i5.AuthCacheManager());
  gh.singleton<_i6.TriggerBottomSheetCubit>(
      () => _i6.TriggerBottomSheetCubit());
  gh.lazySingleton<_i7.UserApiService>(() => _i8.IUserApiService());
  return getIt;
}
