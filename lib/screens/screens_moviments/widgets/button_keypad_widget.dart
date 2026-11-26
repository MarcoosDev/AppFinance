import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';

class ButtonKeyPad extends StatelessWidget {
  const ButtonKeyPad({super.key, required this.onTap, required this.label});
  final Object label;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => {onTap(label)},
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          width: 100,
          height: 100,

          decoration: BoxDecoration(
            color: (label is int
                ? theme.backgroundButtonsFlutuant
                : theme.primary.withAlpha(100)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              label.toString(),
              style: TextStyle(fontSize: 50, color: theme.iconsButtonsFlutuant),
            ),
          ),
        ),
      ),
    );
  }
}
