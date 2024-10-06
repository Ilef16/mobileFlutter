import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    onBackground: Colors.black,
    primary: Colors.amber,
    secondary: Colors.brown, // Définir la couleur primaire
  ),
);

ThemeData darkMode = ThemeData(
   brightness: Brightness.dark,
   colorScheme: ColorScheme.light(
    background: Colors.grey.shade900,
     primary: Colors.red, 
     secondary: Colors.blue,
    )
);