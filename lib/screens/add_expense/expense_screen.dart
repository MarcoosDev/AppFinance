import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';
import 'package:intl/intl.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final _fmt = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  int centavos = 0;

  void _alterarVisor(Object mudanca) {
    if (mudanca is String) {
      if (mudanca == "CE") {
        setState(() => centavos = 0);
        return;
      } else if (mudanca == "->") {
        return;
      }
    }

    if (mudanca is int) {
      final novo = centavos * 10 + mudanca;
      if (novo > 99999999999) return; // R$ 999.999.999,99
      setState(() => centavos = novo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.background,
        iconTheme: IconThemeData(color: theme.iconsButtonsFlutuant),
      ),
      backgroundColor: theme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              (_fmt.format(centavos / 100)),
              style: TextStyle(fontSize: 40, color: theme.iconsButtonsFlutuant),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonNumberPad(label: 9, onTap: _alterarVisor),
              ButtonNumberPad(label: 8, onTap: _alterarVisor),
              ButtonNumberPad(label: 7, onTap: _alterarVisor),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonNumberPad(label: 6, onTap: _alterarVisor),
              ButtonNumberPad(label: 5, onTap: _alterarVisor),
              ButtonNumberPad(label: 4, onTap: _alterarVisor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonNumberPad(label: 3, onTap: _alterarVisor),
              ButtonNumberPad(label: 2, onTap: _alterarVisor),
              ButtonNumberPad(label: 1, onTap: _alterarVisor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonNumberPad(label: "CE", onTap: _alterarVisor),
              ButtonNumberPad(label: 0, onTap: _alterarVisor),
              ButtonNumberPad(label: "->", onTap: _alterarVisor),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonNumberPad extends StatelessWidget {
  const ButtonNumberPad({super.key, required this.onTap, required this.label});
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
