import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/config/enum_colors.dart';

class ThemePreview extends StatelessWidget {
  const ThemePreview({super.key, required this.color});
  final OptionsColor color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder<ColorTheme>(
        valueListenable: ThemeApp.notifier,
        builder: (context, atual, _) {
          final bool selecionado = color.colorTheme == atual;

          return AspectRatio(
            aspectRatio: 1,
            child: Material(
              color: Colors.transparent,
              child: Ink(
                decoration: BoxDecoration(
                  color: atual.backgroundButtonsFlutuant,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: selecionado ? atual.primary : Colors.transparent,
                    width: 5,
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () => ThemeApp.alterarTema(color.colorTheme),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      'assets/skeletons_theme/${color.name}.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
