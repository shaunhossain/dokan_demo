import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      splashColor: LightModeColor.primary.color,
      scaffoldBackgroundColor: LightModeColor.primary.color,
      primaryColor: LightModeColor.primary.color,

      appBarTheme: AppBarTheme(
        surfaceTintColor: LightModeColor.white.color,
        color: LightModeColor.white.color,
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(DarkModeColor.linerFirst.color),
      ),
      checkboxTheme: CheckboxThemeData(
          overlayColor: WidgetStateProperty.all(LightModeColor.linerFirst.color),
          checkColor: WidgetStateProperty.all(Colors.white),
          side:
          BorderSide(width: 1, color: LightModeColor.linerFirst.color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
                width: 1, color: LightModeColor.linerFirst.color),
          )),

      bottomSheetTheme: BottomSheetThemeData(dragHandleColor: LightModeColor.bottomSheetHeader.color),

      cardTheme: CardTheme(
        elevation: 2,
        surfaceTintColor: LightModeColor.white.color,
        color: LightModeColor.white.color
      ),

      inputDecorationTheme: InputDecorationTheme(
        fillColor: LightModeColor.white.color,
        filled: true,
        isDense: true,
        iconColor: LightModeColor.inputIcon.color,
        helperStyle: robotoBLStyle(LightModeColor.hint.color),
        errorStyle: robotoBLStyle(LightModeColor.button.color),
        hintStyle: robotoBLStyle(LightModeColor.hint.color),
        contentPadding: EdgeInsets.only(left: 19.w,top: 15.h,bottom: 15.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: LightModeColor.white.color,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: LightModeColor.button.color,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: LightModeColor.loginTextButton.color,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: LightModeColor.white.color,
          ),
        ),
      ),
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
    splashColor: DarkModeColor.primary.color,
    scaffoldBackgroundColor: DarkModeColor.primary.color,
      appBarTheme: AppBarTheme(
        surfaceTintColor: DarkModeColor.white.color,
        color: DarkModeColor.white.color,
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(DarkModeColor.linerFirst.color),
      ),

      checkboxTheme: CheckboxThemeData(
          overlayColor: WidgetStateProperty.all(DarkModeColor.linerFirst.color),
          checkColor: WidgetStateProperty.all(Colors.white),
          side:
          BorderSide(width: 1, color: DarkModeColor.linerFirst.color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
                width: 1, color: DarkModeColor.linerFirst.color),
          )),

      bottomSheetTheme: BottomSheetThemeData(dragHandleColor: DarkModeColor.bottomSheetHeader.color),

      cardTheme: CardTheme(
          elevation: 2,
          surfaceTintColor: DarkModeColor.white.color,
          color: DarkModeColor.white.color
      ),

      inputDecorationTheme: InputDecorationTheme(
        fillColor: DarkModeColor.white.color,
        filled: true,
        isDense: true,
        iconColor: DarkModeColor.inputIcon.color,
        helperStyle: robotoBLStyle(DarkModeColor.hint.color),
        errorStyle: robotoBLStyle(DarkModeColor.button.color),
        hintStyle: robotoBLStyle(DarkModeColor.hint.color),
        contentPadding: EdgeInsets.only(left: 19.w,top: 15.h,bottom: 15.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: DarkModeColor.white.color,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: DarkModeColor.button.color,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: DarkModeColor.loginTextButton.color,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 0,
            color: DarkModeColor.white.color,
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: DarkModeColor.white.color,
          selectedItemColor: DarkModeColor.activeBottomNavIcon.color,
          unselectedItemColor: DarkModeColor.inactiveBottomNavIcon.color,
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

