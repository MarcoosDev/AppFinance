import 'package:app_financeiro_autoral/screens/screens_moviments/widgets/button_keypad_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';
import 'package:intl/intl.dart';

class KeypadWidget extends StatefulWidget {
  const KeypadWidget({super.key, required this.centavos, required this.onTap});
  final int centavos;
  final Function onTap;
  @override
  State<KeypadWidget> createState() => _KeypadWidgetState();
}

class _KeypadWidgetState extends State<KeypadWidget> {
  final _fmt = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            (_fmt.format(widget.centavos / 100)),
            style: TextStyle(fontSize: 40, color: theme.iconsButtonsFlutuant),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonKeyPad(label: 9, onTap: widget.onTap),
            ButtonKeyPad(label: 8, onTap: widget.onTap),
            ButtonKeyPad(label: 7, onTap: widget.onTap),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonKeyPad(label: 6, onTap: widget.onTap),
            ButtonKeyPad(label: 5, onTap: widget.onTap),
            ButtonKeyPad(label: 4, onTap: widget.onTap),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonKeyPad(label: 3, onTap: widget.onTap),
            ButtonKeyPad(label: 2, onTap: widget.onTap),
            ButtonKeyPad(label: 1, onTap: widget.onTap),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonKeyPad(label: "CE", onTap: widget.onTap),
            ButtonKeyPad(label: 0, onTap: widget.onTap),
            ButtonKeyPad(label: "->", onTap: widget.onTap),
          ],
        ),
      ],
    );
  }
}
