import 'package:dokan_demo/core/app_themes.dart';
import 'package:dokan_demo/injection.dart';
import 'package:dokan_demo/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
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