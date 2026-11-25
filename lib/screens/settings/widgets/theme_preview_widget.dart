import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/config/enum_colors.dart';

class ThemePreview extends StatefulWidget {
  const ThemePreview({super.key, required this.color});
  final OptionsColor color;

  @override
  State<ThemePreview> createState() => _ThemePreviewState();
}

class _ThemePreviewState extends State<ThemePreview> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) => InkWell(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          onTap: () => {ThemeApp.alterarTema(widget.color.colorTheme)},
          child: Ink(
            height: constraints.maxWidth,
            decoration: BoxDecoration(
              color: theme.backgroundButtonsFlutuant,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),

              child: SvgPicture.asset(
                'assets/skeletons_theme/${widget.color.name}.svg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
