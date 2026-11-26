import 'package:app_financeiro_autoral/models/user_model.dart';
import 'package:app_financeiro_autoral/config/enum_colors.dart';
import 'package:app_financeiro_autoral/screens/screens_moviments/add_expense/expense_screen.dart';
import 'package:app_financeiro_autoral/screens/home/home_page.dart';
import 'package:app_financeiro_autoral/screens/screens_moviments/add_gain/gain_screen.dart';
import 'package:app_financeiro_autoral/screens/settings/settings.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

UserModel us = UserModel(
  name: "Livia Sophia",
  saldoInicial: (1000),
  corThema: OptionsColor.roxo,
); //Isso é temporario

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(user: us),
    ),
    GoRoute(path: "/settings", builder: (context, state) => Settings()),
    GoRoute(
      path: "/expense",
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey, // ← adicione isto
        child: const ExpenseScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curva = CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutCubic,
            reverseCurve: Curves.easeInCubic,
          );
          return SlideTransition(
            position: Tween(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(curva),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: "/gain",
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey, // ← adicione isto
        child: const GainScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curva = CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutCubic,
            reverseCurve: Curves.easeInCubic,
          );
          return SlideTransition(
            position: Tween(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(curva),
            child: child,
          );
        },
      ),
    ),
  ],
);
