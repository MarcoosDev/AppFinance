import 'package:app_financeiro_autoral/models/user_model.dart';
import 'package:app_financeiro_autoral/screens/home/home_page_colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
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
                  Text(
                    "Olá, ",
                    style: TextStyle(
                      fontSize: 18,
                      color: theme.text,
                      fontFamily: "Arial",
                    ),
                  ),
                  Text(
                    user.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: theme.text,
                      fontFamily: "Arial",
                    ),
                  ),
                  Spacer(),

                  Container(
                    decoration: BoxDecoration(
                      color: theme.iconsBackgroud,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.notifications, color: theme.icons),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: theme.iconsBackgroud,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.settings, color: theme.icons),
                    ),
                  ),
                ],
              ),

              Spacer(),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,

                    children: [
                      Text(
                        user.saldoInicial.toInt().toString(),
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Gothic",
                          color: theme.text,
                        ),
                      ),
                      Text(
                        ',' +
                            ((user.saldoInicial % 1) * 100)
                                .round()
                                .toString()
                                .padLeft(2, '0'),
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Gothic",
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
