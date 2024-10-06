import 'package:flutter/material.dart';

class AppColors {
  static final ThemeData lightMode = ThemeData.light().copyWith(
    // Définir les couleurs pour le mode clair
    primaryColor: Colors.blue, // Modifier selon vos préférences
    backgroundColor: Colors.white,
    // Ajoutez d'autres couleurs de votre choix
  );

  static final ThemeData darkMode = ThemeData.dark().copyWith(
    // Définir les couleurs pour le mode sombre
    primaryColor: Colors.deepPurple, // Modifier selon vos préférences
    backgroundColor: Colors.black,
    // Ajoutez d'autres couleurs de votre choix
  );
}