import 'package:app_financeiro_autoral/config/enum_colors.dart';

class UserModel {
  const UserModel({
    required this.name,
    required this.saldoInicial,
    required this.corThema,
  });

  final String name;
  final double saldoInicial;
  final OptionsColor corThema;
}
