import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
/// roboto
TextStyle robotoH5Style(Color color) =>
    GoogleFonts.roboto(fontSize: 25.sp, fontWeight: FontWeight.bold, color: color);
TextStyle robotoH6Style(Color color) =>
    GoogleFonts.roboto(fontSize: 22.sp, fontWeight: FontWeight.bold, color: color);

TextStyle robotoBLStyle(Color color) => GoogleFonts.roboto(
    fontSize: 17.sp, fontWeight: FontWeight.normal, color: color);
TextStyle robotoBLThinStyle(Color color) => GoogleFonts.roboto(
    fontSize: 17.sp, fontWeight: FontWeight.w300, color: color);
TextStyle robotoBLMediumStyle(Color color) =>
    GoogleFonts.roboto(fontSize: 17.sp, fontWeight: FontWeight.w600, color: color);
TextStyle robotoBLBoldStyle(Color color) =>
    GoogleFonts.roboto(fontSize: 17.sp, fontWeight: FontWeight.bold, color: color);
TextStyle robotoBLLBoldStyle(Color color) =>
    GoogleFonts.roboto(fontSize: 18.sp, fontWeight: FontWeight.bold, color: color);

TextStyle robotoBMMStyle(Color color) => GoogleFonts.roboto(
    fontSize: 16.sp, fontWeight: FontWeight.normal, color: color);

TextStyle robotoBMStyle(Color color) => GoogleFonts.roboto(
    fontSize: 15.sp, fontWeight: FontWeight.normal, color: color);

TextStyle robotoBSStyle(Color color) => GoogleFonts.roboto(
    fontSize: 13.sp, fontWeight: FontWeight.normal, color: color);


/// lato

TextStyle latoH5Style(Color color) =>
    GoogleFonts.lato(fontSize: 24.sp, fontWeight: FontWeight.bold, color: color);
TextStyle latoBLStyle(Color color) =>
    GoogleFonts.lato(fontSize: 17.sp, fontWeight: FontWeight.normal, color: color);
TextStyle latoBLBoldStyle(Color color) =>
    GoogleFonts.lato(fontSize: 17.sp, fontWeight: FontWeight.bold, color: color);
TextStyle latoBMRegularStyle(Color color) =>
    GoogleFonts.lato(fontSize: 15.sp, fontWeight: FontWeight.normal, color: color);

TextStyle latoBMRegularCrossLineStyle(Color color) => GoogleFonts.lato(
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
    color: color,
    decoration: TextDecoration.lineThrough,
    decorationColor: color);
