import 'package:flutter/material.dart';

// -----------------------------------------
// PRIMARY COLOR
// -----------------------------------------
const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE4F2F9),
  100: Color(0xFFBCDEF1),
  200: Color(0xFF90C8E8),
  300: Color(0xFF64B2DF),
  400: Color(0xFF42A2D8),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF1D89CC),
  700: Color(0xFF187EC6),
  800: Color(0xFF1474C0),
  900: Color(0xFF0B62B5),
});
const int _primaryPrimaryValue = 0xFF2191D1;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFE1EFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF7BB9FF),
  700: Color(0xFF62ABFF),
});
const int _primaryAccentValue = 0xFFAED4FF;

// -----------------------------------------
// SECONDARY COLOR
// -----------------------------------------
const MaterialColor secondary =
    MaterialColor(_secondaryPrimaryValue, <int, Color>{
  50: Color(0xFFECF6FB),
  100: Color(0xFFD1E8F5),
  200: Color(0xFFB2D9EF),
  300: Color(0xFF93C9E9),
  400: Color(0xFF7BBEE4),
  500: Color(_secondaryPrimaryValue),
  600: Color(0xFF5CABDB),
  700: Color(0xFF52A2D7),
  800: Color(0xFF4899D2),
  900: Color(0xFF368ACA),
});
const int _secondaryPrimaryValue = 0xFF64B2DF;

const MaterialColor secondaryAccent =
    MaterialColor(_secondaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_secondaryAccentValue),
  400: Color(0xFFADDAFF),
  700: Color(0xFF94CEFF),
});
const int _secondaryAccentValue = 0xFFE0F1FF;

// -----------------------------------------
// TERTIARY COLOR
// -----------------------------------------
const MaterialColor tertiary =
    MaterialColor(_tertiaryPrimaryValue, <int, Color>{
  50: Color(0xFFE3EDF2),
  100: Color(0xFFB9D1DE),
  200: Color(0xFF8BB3C9),
  300: Color(0xFF5D94B3),
  400: Color(0xFF3A7DA2),
  500: Color(_tertiaryPrimaryValue),
  600: Color(0xFF145E8A),
  700: Color(0xFF11537F),
  800: Color(0xFF0D4975),
  900: Color(0xFF073863),
});
const int _tertiaryPrimaryValue = 0xFF176692;

const MaterialColor tertiaryAccent =
    MaterialColor(_tertiaryAccentValue, <int, Color>{
  100: Color(0xFF95C7FF),
  200: Color(_tertiaryAccentValue),
  400: Color(0xFF2F90FF),
  700: Color(0xFF1583FF),
});
const int _tertiaryAccentValue = 0xFF62ACFF;

// -----------------------------------------
// LIGHT COLOR
// -----------------------------------------
const MaterialColor light = MaterialColor(_lightPrimaryValue, <int, Color>{
  50: Color(0xFFFCFEFE),
  100: Color(0xFFF8FCFE),
  200: Color(0xFFF4FAFD),
  300: Color(0xFFF0F7FC),
  400: Color(0xFFECF6FB),
  500: Color(_lightPrimaryValue),
  600: Color(0xFFE6F3F9),
  700: Color(0xFFE3F1F9),
  800: Color(0xFFDFEFF8),
  900: Color(0xFFD9ECF6),
});
const int _lightPrimaryValue = 0xFFE9F4FA;

const MaterialColor lightAccent = MaterialColor(_lightAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_lightAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
});
const int _lightAccentValue = 0xFFFFFFFF;

// -----------------------------------------
// DARK COLOR
// -----------------------------------------
const MaterialColor dark = MaterialColor(_darkPrimaryValue, <int, Color>{
  50: Color(0xFFE1E2E3),
  100: Color(0xFFB3B7B9),
  200: Color(0xFF81878A),
  300: Color(0xFF4F565B),
  400: Color(0xFF293238),
  500: Color(_darkPrimaryValue),
  600: Color(0xFF030C12),
  700: Color(0xFF020A0F),
  800: Color(0xFF02080C),
  900: Color(0xFF010406),
});
const int _darkPrimaryValue = 0xFF030E15;

const MaterialColor darkAccent = MaterialColor(_darkAccentValue, <int, Color>{
  100: Color(0xFF4D4DFF),
  200: Color(_darkAccentValue),
  400: Color(0xFF0000E6),
  700: Color(0xFF0000CD),
});
const int _darkAccentValue = 0xFF1A1AFF;
