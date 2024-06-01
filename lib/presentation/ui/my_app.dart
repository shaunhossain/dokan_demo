import 'package:dokan_demo/core/app_themes.dart';
import 'package:dokan_demo/injection.dart';
import 'package:dokan_demo/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:dokan_demo/presentation/navigation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<BottomNavigationBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Dokan',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        routerConfig: router,
      ),
    );
  }
}