import 'package:flutter/material.dart';

const brightness = Brightness.light
;
const primaryColor = Color(0xFF2AACFF);
const accentColor = Color(0xFFFFFFFF);

ThemeData androidTheme(){
  return ThemeData(
    brightness: brightness,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
      ),
    ),
    primaryColor: primaryColor, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
  );
}