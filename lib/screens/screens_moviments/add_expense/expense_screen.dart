import 'package:app_financeiro_autoral/routes/app_routes.dart';
import 'package:app_financeiro_autoral/screens/screens_moviments/widgets/keypad_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';
import 'package:go_router/go_router.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  int centavos = 0;
  void _alterarVisor(Object mudanca) {
    if (mudanca is String) {
      if (mudanca == "CE") {
        setState(() => centavos = 0);
        return;
      } else if (mudanca == "->") {
        us.removerSaldo(centavos.toDouble() / 100);
        GoRouter.of(context).pop();
        return;
      }
    }

    if (mudanca is int) {
      final novo = centavos * 10 + mudanca;
      if (novo > 99999999999) return;
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
      body: KeypadWidget(centavos: centavos, onTap: _alterarVisor),
    );
  }
}
