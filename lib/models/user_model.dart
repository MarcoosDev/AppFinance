import 'package:app_financeiro_autoral/config/enum_colors.dart';

class UserModel {
  UserModel({
    required this.name,
    required this.saldoInicial,
    required this.corThema,
  });

  String name;
  double saldoInicial;
  OptionsColor corThema;

  void removerSaldo(double valor) {
    saldoInicial -= valor;
  }

  void adicionarSaldo(double valor) {
    saldoInicial += valor;
  }
}
