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
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: LightModeColor.white.color,
        indicatorColor: LightModeColor.white.color,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightModeColor.white.color,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: LightModeColor.activeBottomNavIcon.color,
          unselectedItemColor: LightModeColor.inactiveBottomNavIcon.color,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered
      )
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    splashColor: LightModeColor.primary.color,
    scaffoldBackgroundColor: LightModeColor.primary.color,
    // navigationBarTheme: NavigationBarThemeData(
    //   backgroundColor: LightModeColor.secondaryDark.color,
    //   indicatorColor: LightModeColor.secondaryLight.color,
    //   labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    //   labelTextStyle: MaterialStateProperty.all(ibmPlexSansBMStyle(LightModeColor.highlight.color)),
    //   iconTheme: MaterialStateProperty.all(IconThemeData(
    //     color: LightModeColor.highlight.color
    //   ))
    // ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //     backgroundColor: LightModeColor.white.color,
    //     elevation: 0,
    //     type: BottomNavigationBarType.fixed,
    //     showSelectedLabels: true,
    //     showUnselectedLabels: true,
    //     selectedItemColor: LightModeColor.secondaryLight.color,
    //     unselectedItemColor: LightModeColor.grey.color,
    //     landscapeLayout: BottomNavigationBarLandscapeLayout.centered
    // )
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

