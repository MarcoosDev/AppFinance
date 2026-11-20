import 'package:flutter/material.dart';

class AppColors {
  static const roxo = ColorTheme(
    background: Color.fromRGBO(40, 40, 40, 1),
    background2: Color.fromARGB(255, 233, 211, 255),
    background3: Color.fromARGB(255, 255, 255, 255),
    backgroundButtonsFlutuant: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 160, 126, 183),
    terciary: Color.fromARGB(255, 75, 10, 119),
    secundary: Color.fromARGB(255, 182, 152, 227),
    icons: Color.fromRGBO(40, 40, 40, 1),
    icons2: Color.fromARGB(255, 89, 49, 122),
    iconsButtonsFlutuant: Color.fromARGB(255, 222, 222, 222),
    text: Color.fromRGBO(40, 40, 40, 1),
    text2: Color.fromARGB(255, 216, 216, 216),
  );

  static const light = ColorTheme(
    background: Color.fromARGB(255, 240, 240, 240),
    background2: Color.fromARGB(255, 220, 220, 220),
    background3: Color.fromARGB(255, 220, 220, 220),
    backgroundButtonsFlutuant: Color.fromARGB(255, 255, 255, 255),

    primary: Color.fromARGB(255, 39, 105, 9),
    terciary: Color.fromARGB(255, 123, 11, 208),
    secundary: Color.fromARGB(255, 233, 157, 6),
    icons: Color.fromARGB(255, 40, 40, 40),
    icons2: Color.fromARGB(255, 40, 40, 40),
    text: Color.fromARGB(255, 85, 85, 85),
    iconsButtonsFlutuant: Color.fromARGB(255, 89, 49, 122),

    text2: Color.fromARGB(255, 85, 85, 85),
  );
}

class ColorTheme {
  final Color background;
  final Color background2;
  final Color background3;
  final Color primary;
  final Color terciary;
  final Color secundary;
  final Color icons;
  final Color icons2;
  final Color text;
  final Color text2;
  final Color backgroundButtonsFlutuant;
  final Color iconsButtonsFlutuant;
  Color get iconsBackgroud => primary.withValues(alpha: 0.50, green: 0.3);

  const ColorTheme({
    required this.background,
    required this.background2,
    required this.background3,
    required this.backgroundButtonsFlutuant,
    required this.primary,
    required this.terciary,
    required this.secundary,
    required this.icons,
    required this.icons2,
    required this.iconsButtonsFlutuant,
    required this.text,
    required this.text2,
  });
}

final ColorTheme theme = AppColors.roxo;
