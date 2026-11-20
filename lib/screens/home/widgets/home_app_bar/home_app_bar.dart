import 'package:app_financeiro_autoral/models/user_model.dart';
import 'package:app_financeiro_autoral/screens/home/settings/home_page_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(230, 0, 0, 0),
            blurRadius: 10.0,
          ),
        ],
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
        color: theme.primary,
      ),

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Olá ",
                            style: TextStyle(
                              fontSize: 25,
                              color: theme.text,
                              fontFamily: "Arial",
                            ),
                          ),
                          Text(
                            '${user.name.split(' ').first}!',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: theme.text,
                              fontFamily: "Arial",
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'bem vindo a sua previsão financeira!',
                        style: TextStyle(
                          fontSize: 18,
                          color: theme.text,
                          fontFamily: "Arial",
                        ),
                      ),
                    ],
                  ),
                  Spacer(),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        size: 30,
                        color: theme.icons,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.settings_outlined,
                        size: 30,
                        color: theme.icons,
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,

                    children: [
                      Text(
                        NumberFormat(
                          '#,##0',
                          'pt_BR',
                        ).format(user.saldoInicial),
                        style: TextStyle(
                          fontSize: 90,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Coiny",
                          color: theme.text,
                        ),
                      ),
                      Text(
                        ",${((user.saldoInicial % 1) * 100).round().toString().padLeft(2, '0')}",
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: "Coiny",
                          fontWeight: FontWeight.w200,
                          color: theme.text.withAlpha(250),
                        ),
                      ),
                    ],
                  ),

                  Text(
                    "Saldo disponível",
                    style: TextStyle(fontSize: 20, color: theme.text),
                  ),
                ],
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
