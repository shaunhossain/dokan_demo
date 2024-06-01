import 'package:dokan_demo/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      splashColor: LightModeColor.primary.color,
      scaffoldBackgroundColor: LightModeColor.primary.color,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightModeColor.white.color,
          selectedItemColor: LightModeColor.activeBottomNavIcon.color,
          unselectedItemColor: LightModeColor.inactiveBottomNavIcon.color,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered
      ),
    bottomAppBarTheme: const BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: Colors.transparent,
      elevation: 2,
      padding: EdgeInsets.zero,
    )
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    splashColor: LightModeColor.primary.color,
    scaffoldBackgroundColor: LightModeColor.primary.color,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightModeColor.white.color,
          selectedItemColor: LightModeColor.activeBottomNavIcon.color,
          unselectedItemColor: LightModeColor.inactiveBottomNavIcon.color,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        shape: CircularNotchedRectangle(),
        color: Colors.transparent,
        elevation: 2,
        padding: EdgeInsets.zero,
      )
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
      themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
      themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? LightModeColor.primary.color
          : DarkModeColor.primary.color,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}

extension ThemeExtras on ThemeData {
  Color get particlesColor => brightness == Brightness.light
      ? LightModeColor.primary.color
      : DarkModeColor.primary.color;
}

