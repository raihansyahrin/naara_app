import 'package:flutter/material.dart';

// -----------------------------------------
// PRIMARY COLOR
// -----------------------------------------
const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFF0F6FE),
  100: Color(0xFFDBE9FC),
  200: Color(0xFFC3DBFB),
  300: Color(0xFFAACCF9),
  400: Color(0xFF98C1F7),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF7EAFF5),
  700: Color(0xFF73A6F3),
  800: Color(0xFF699EF2),
  900: Color(0xFF568EEF),
});
const int _primaryPrimaryValue = 0xFF86B6F6;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFEBF2FF),
  700: Color(0xFFD2E2FF),
});
const int _primaryAccentValue = 0xFFFFFFFF;

// -----------------------------------------
// SECONDARY COLOR
// -----------------------------------------
const MaterialColor secondary =
    MaterialColor(_secondaryPrimaryValue, <int, Color>{
  50: Color(0xFFF6FAFF),
  100: Color(0xFFE9F2FF),
  200: Color(0xFFDAEAFF),
  300: Color(0xFFCBE1FF),
  400: Color(0xFFBFDAFF),
  500: Color(_secondaryPrimaryValue),
  600: Color(0xFFADCFFF),
  700: Color(0xFFA4C9FF),
  800: Color(0xFF9CC3FF),
  900: Color(0xFF8CB9FF),
});
const int _secondaryPrimaryValue = 0xFFB4D4FF;

const MaterialColor secondaryAccent =
    MaterialColor(_secondaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_secondaryAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
});
const int _secondaryAccentValue = 0xFFFFFFFF;

// -----------------------------------------
// TERTIARY COLOR
// -----------------------------------------
const MaterialColor tertiary =
    MaterialColor(_tertiaryPrimaryValue, <int, Color>{
  50: Color(0xFFFDFEFF),
  100: Color(0xFFFAFCFF),
  200: Color(0xFFF7FAFF),
  300: Color(0xFFF3F8FF),
  400: Color(0xFFF1F7FF),
  500: Color(_tertiaryPrimaryValue),
  600: Color(0xFFECF4FF),
  700: Color(0xFFE9F2FF),
  800: Color(0xFFE7F0FF),
  900: Color(0xFFE2EEFF),
});
const int _tertiaryPrimaryValue = 0xFFEEF5FF;

const MaterialColor tertiaryAccent =
    MaterialColor(_tertiaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_tertiaryAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
});
const int _tertiaryAccentValue = 0xFFFFFFFF;

// -----------------------------------------
// ACCENT COLOR
// -----------------------------------------
const MaterialColor accent = MaterialColor(_accentPrimaryValue, <int, Color>{
  50: Color(0xFFE3EDF1),
  100: Color(0xFFB9D3DB),
  200: Color(0xFF8BB5C3),
  300: Color(0xFF5D97AB),
  400: Color(0xFF3A8199),
  500: Color(_accentPrimaryValue),
  600: Color(0xFF14637F),
  700: Color(0xFF115874),
  800: Color(0xFF0D4E6A),
  900: Color(0xFF073C57),
});
const int _accentPrimaryValue = 0xFF176B87;

const MaterialColor accentAccent =
    MaterialColor(_accentAccentValue, <int, Color>{
  100: Color(0xFF8BD1FF),
  200: Color(_accentAccentValue),
  400: Color(0xFF25AAFF),
  700: Color(0xFF0BA0FF),
});
const int _accentAccentValue = 0xFF58BDFF;
