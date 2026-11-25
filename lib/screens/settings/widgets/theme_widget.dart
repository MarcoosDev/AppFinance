import 'package:app_financeiro_autoral/config/enum_colors.dart';
import 'package:app_financeiro_autoral/screens/settings/widgets/theme_preview_widget.dart';
import 'package:flutter/material.dart';

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({super.key});

  @override
  State<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ThemePreview(color: OptionsColor.vermelho),
              ThemePreview(color: OptionsColor.verde),
              ThemePreview(color: OptionsColor.amarelo),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ThemePreview(color: OptionsColor.azul),
              ThemePreview(color: OptionsColor.rosa),
              ThemePreview(color: OptionsColor.roxo),
            ],
          ),
        ],
      ),
    );
  }
}
