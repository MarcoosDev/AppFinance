import 'package:flutter/material.dart';

class AppColors {
  static const roxo = ColorTheme(
    background: Color.fromRGBO(40, 40, 40, 1),
    backgroundAnalytics: Color.fromRGBO(211, 211, 211, 1),
    backgroundButtonsFlutuant: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 100, 25, 153),
    icons: Color.fromARGB(255, 222, 222, 222),
    iconsButtonsFlutuant: Color.fromARGB(255, 222, 222, 222),
    text: Color.fromARGB(255, 216, 216, 216),
    text2: Color.fromARGB(255, 216, 216, 216),
  );

  static const amarelo = ColorTheme(
    background: Color.fromRGBO(40, 40, 40, 1),
    backgroundAnalytics: Color.fromRGBO(211, 211, 211, 1),
    backgroundButtonsFlutuant: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 175, 168, 31),
    icons: Color.fromRGBO(40, 40, 40, 1),
    iconsButtonsFlutuant: Color.fromARGB(255, 222, 222, 222),
    text: Color.fromRGBO(40, 40, 40, 1),
    text2: Color.fromARGB(255, 216, 216, 216),
  );

  static const verde = ColorTheme(
    background: Color.fromRGBO(40, 40, 40, 1),
    backgroundAnalytics: Color.fromRGBO(211, 211, 211, 1),
    backgroundButtonsFlutuant: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 31, 175, 38),
    icons: Color.fromRGBO(40, 40, 40, 1),
    iconsButtonsFlutuant: Color.fromARGB(255, 222, 222, 222),
    text: Color.fromRGBO(40, 40, 40, 1),
    text2: Color.fromARGB(255, 216, 216, 216),
  );

  static const rosa = ColorTheme(
    background: Color.fromRGBO(40, 40, 40, 1),
    backgroundAnalytics: Color.fromRGBO(211, 211, 211, 1),
    backgroundButtonsFlutuant: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 149, 57, 145),
    icons: Color.fromARGB(255, 222, 222, 222),
    iconsButtonsFlutuant: Color.fromARGB(255, 222, 222, 222),
    text: Color.fromARGB(255, 216, 216, 216),
    text2: Color.fromARGB(255, 216, 216, 216),
  );

  static const vermelho = ColorTheme(
    background: Color.fromRGBO(40, 40, 40, 1),
    backgroundAnalytics: Color.fromRGBO(211, 211, 211, 1),

    backgroundButtonsFlutuant: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 153, 25, 25),
    icons: Color.fromARGB(255, 222, 222, 222),
    iconsButtonsFlutuant: Color.fromARGB(255, 222, 222, 222),
    text: Color.fromARGB(255, 216, 216, 216),
    text2: Color.fromARGB(255, 216, 216, 216),
  );

  static const azul = ColorTheme(
    background: Color.fromRGBO(40, 40, 40, 1),
    backgroundAnalytics: Color.fromRGBO(211, 211, 211, 1),

    backgroundButtonsFlutuant: Color.fromARGB(255, 62, 62, 62),
    primary: Color.fromARGB(255, 31, 25, 153),
    icons: Color.fromARGB(255, 222, 222, 222),
    iconsButtonsFlutuant: Color.fromARGB(255, 222, 222, 222),
    text: Color.fromARGB(255, 216, 216, 216),
    text2: Color.fromARGB(255, 216, 216, 216),
  );
}

class ColorTheme {
  final Color background;
  final Color backgroundAnalytics;
  final Color primary;
  final Color icons;
  final Color text;
  final Color text2;
  final Color backgroundButtonsFlutuant;
  final Color iconsButtonsFlutuant;
  Color get iconsBackgroud => primary.withValues(alpha: 0.50, green: 0.3);

  const ColorTheme({
    required this.background,
    required this.backgroundAnalytics,
    required this.backgroundButtonsFlutuant,
    required this.primary,
    required this.icons,
    required this.iconsButtonsFlutuant,
    required this.text,
    required this.text2,
  });
}

class ThemeApp {
  static final ValueNotifier<ColorTheme> notifier = ValueNotifier<ColorTheme>(
    AppColors.rosa,
  );

  static ColorTheme get theme => notifier.value;

  static void alterarTema(ColorTheme novaCor) {
    notifier.value = novaCor;
  }
}

ColorTheme get theme => ThemeApp.theme;
