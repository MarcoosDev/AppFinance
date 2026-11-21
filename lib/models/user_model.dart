import 'package:flutter/material.dart';

enum PreferenceColor {
  verde(Color.fromARGB(255, 23, 182, 15)),
  roxo(Color.fromARGB(255, 160, 126, 183)),
  amarelo(Color.fromARGB(255, 182, 182, 15)),
  rosa(Color.fromARGB(255, 149, 57, 145));

  final Color color;

  const PreferenceColor(this.color);
}

class UserModel {
  const UserModel({
    required this.name,
    required this.saldoInicial,
    required this.corThema,
  });

  final String name;
  final double saldoInicial;
  final PreferenceColor corThema;
}
