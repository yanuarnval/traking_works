import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracking_works/shared/colors_value.dart';

class TrakingWorks {
  static TextTheme textTheme = TextTheme(
    button:
        GoogleFonts.spartan(fontWeight: FontWeight.w700, color: Colors.white),
    bodyText1: GoogleFonts.spartan(fontWeight: FontWeight.w700, fontSize: 16),
    bodyText2: GoogleFonts.spartan(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorsValue.blackColor),
    subtitle1: GoogleFonts.spartan(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorsValue.hintColor),
  );

  static ThemeData Light() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xff286782)));
    return ThemeData(
        textTheme: textTheme,
        appBarTheme: AppBarTheme(
            backgroundColor: ColorsValue.colorPrimary, elevation: 0),
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff286782),
            elevation: 0,
            minimumSize: Size(double.infinity, 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          ),
        ));
  }
}
