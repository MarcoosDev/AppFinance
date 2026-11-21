import 'package:app_financeiro_autoral/models/user_model.dart';
import 'package:app_financeiro_autoral/screens/home/home_page.dart';
import 'package:app_financeiro_autoral/screens/settings/settings.dart';
import 'package:go_router/go_router.dart';

final UserModel us = UserModel(
  name: "Livía Sophia",
  saldoInicial: 1570,
  corThema: PreferenceColor.roxo,
); //Isso é temporario

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(user: us),
    ),
    GoRoute(path: "/settings", builder: (context, state) => const Settings()),
  ],
);
