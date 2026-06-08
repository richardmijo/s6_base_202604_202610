import 'package:flutter/material.dart';

/// Clase centralizada para los temas visuales de la aplicación,
/// inspirados en la identidad institucional de la UIDE (Ecuador).
class AppTheme {
  // Colores principales UIDE
  static const Color uideBlue = Color(0xFF002855); // Azul Marino Institucional
  static const Color uideGold = Color(0xFFFCBA12); // Amarillo / Dorado Oro

  /// Tema Claro Institucional
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // La semilla genera automáticamente el resto de la paleta claro basado en el azul UIDE
    colorSchemeSeed: uideBlue,

    appBarTheme: const AppBarTheme(
      backgroundColor:
          uideGold, // Fondo Dorado/Amarillo UIDE (Gran contraste para el modo claro)
      foregroundColor: uideBlue, // Letras e iconos en Azul Marino
      elevation: 4,
      centerTitle: true,
    ),

    // Configuración general para los botones elevados
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: uideBlue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    ),

    // Personalización del botón de acción flotante (FAB) en color dorado UIDE
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: uideGold,
      foregroundColor: uideBlue,
    ),
  );

  /// Tema Oscuro Institucional
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // Semilla para el modo oscuro
    colorSchemeSeed: uideBlue,

    appBarTheme: const AppBarTheme(
      backgroundColor: uideBlue, // Fondo Azul Marino UIDE para el modo oscuro
      foregroundColor: Colors.white, // Letras e iconos en blanco
      elevation: 0,
      centerTitle: true,
    ),

    // Configuración general para los botones elevados en modo oscuro
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: uideGold,
        foregroundColor: uideBlue,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    ),

    // El FAB mantiene el color dorado distintivo
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: uideGold,
      foregroundColor: uideBlue,
    ),
  );
}
