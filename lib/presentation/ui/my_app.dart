import 'package:dokan_demo/core/app_themes.dart';
import 'package:dokan_demo/injection.dart';
import 'package:dokan_demo/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:dokan_demo/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:dokan_demo/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:dokan_demo/presentation/bloc/registation_bloc/registration_bloc.dart';
import 'package:dokan_demo/presentation/bloc/trigger_bottom_sheet_cubit/trigger_bottom_sheet_cubit.dart';
import 'package:dokan_demo/presentation/bloc/user_profile_bloc/user_profile_bloc.dart';
import 'package:dokan_demo/presentation/navigation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<BottomNavigationBloc>()),
            BlocProvider(create: (context) => getIt<TriggerBottomSheetCubit>()),
            BlocProvider(create: (context) => getIt<AuthBloc>()),
            BlocProvider(create: (context) => getIt<RegistrationBloc>()),
            BlocProvider(create: (context) => getIt<UserProfileBloc>()),
            BlocProvider(create: (context) => getIt<ProductBloc>()),
          ],
          child: SafeArea(
            child: MaterialApp.router(
              title: 'Dokan',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: ThemeMode.light,
              routerConfig: router,
            ),
          ),
        );
      },
    );
  }
}