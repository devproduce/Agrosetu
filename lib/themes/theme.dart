import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.green[800],
  colorScheme: ColorScheme.light(
    primary: Colors.green[800]!, // Main color
    secondary: Colors.brown[500]!, // Light green background
    surface: Colors.white, // For cards, containers, etc.
    onPrimary: Colors.white, // Text color on primary elements
    onSecondary: Colors.black, // Text on background
    onSurface: Colors.black, // Text on surfaces
  ),
  appBarTheme: AppBarTheme(
    color: Colors.green[800],
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(color: Colors.black), // Equivalent to bodyText1
    bodyMedium: const TextStyle(color: Colors.black87), // Equivalent to bodyText2
    headlineSmall: TextStyle(
      color: Colors.green[900],
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ), // Equivalent to headline1
  ),

  buttonTheme: ButtonThemeData(
    buttonColor: Colors.brown[500],
    textTheme: ButtonTextTheme.primary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.green[800],
  ),
  scaffoldBackgroundColor: Colors.green[50],
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.green[700],
  colorScheme: ColorScheme.dark(
    primary: Colors.green[700]!, // Dark green for primary color
    secondary: Colors.brown[300]!, // Dark green background
    surface: Colors.grey[800]!, // For cards, containers, etc.
    onPrimary: Colors.black, // Text color on primary elements
    onSecondary: Colors.white, // Text on background
    onSurface: Colors.white, // Text on surfaces
  ),
  appBarTheme: AppBarTheme(
    color: Colors.green[700],
    iconTheme: const IconThemeData(color: Colors.black),
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(color: Colors.white), // Equivalent to bodyText1
    bodyMedium: const TextStyle(color: Colors.white70), // Equivalent to bodyText2
    headlineSmall: TextStyle(
      color: Colors.green[300],
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ), // Equivalent to headline1
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.brown[300],
    textTheme: ButtonTextTheme.primary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.green[700],
  ),
  scaffoldBackgroundColor: Colors.green[900],
);