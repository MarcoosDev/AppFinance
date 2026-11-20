import 'package:flutter/material.dart';

class AppColors {
  static const dark = ColorTheme(
    background: Color.fromARGB(255, 38, 38, 38),
    background2: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 8, 113, 6),
    terciary: Color.fromARGB(255, 123, 11, 208),
    secundary: Color.fromARGB(255, 233, 157, 6),
    icons: Color.fromARGB(255, 227, 227, 227),
    text: Color.fromARGB(255, 227, 227, 227),
  );

  static const light = ColorTheme(
    background: Color.fromARGB(255, 240, 240, 240),
    background2: Color.fromARGB(255, 220, 220, 220),
    primary: Color.fromARGB(255, 39, 105, 9),
    terciary: Color.fromARGB(255, 123, 11, 208),
    secundary: Color.fromARGB(255, 233, 157, 6),
    icons: Color.fromARGB(255, 40, 40, 40),
    text: Color.fromARGB(255, 85, 85, 85),
  );
}

class ColorTheme {
  final Color background;
  final Color background2;
  final Color primary;
  final Color terciary;
  final Color secundary;
  final Color icons;
  final Color text;
  Color get iconsBackgroud => primary.withValues(alpha: 0.50, green: 0.3);

  const ColorTheme({
    required this.background,
    required this.background2,
    required this.primary,
    required this.terciary,
    required this.secundary,
    required this.icons,
    required this.text,
  });
}

final ColorTheme theme = AppColors.dark;
