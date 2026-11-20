import 'package:app_financeiro_autoral/models/user_model.dart';
import 'package:app_financeiro_autoral/screens/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const HomePage(
        user: UserModel(name: "Marcos Pereira", saldoInicial: 65.21),
      ),
    );
  }
}

//corrigir o sistema de temas. crie categorias de tudo, esqueça flutter e va para o figma planejar
