import 'package:app_financeiro_autoral/screens/home/home_page_colors.dart';
import 'package:flutter/material.dart';

class AnalysticsDashboard extends StatefulWidget {
  const AnalysticsDashboard({super.key});

  @override
  State<AnalysticsDashboard> createState() => _AnalysticsDashboard();
}

class _AnalysticsDashboard extends State<AnalysticsDashboard> {
  Alignment selectTypeGraphic = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          //conteiner inferior grande
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: theme.background2,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              padding: const EdgeInsets.all(20),
            ),
          ),

          //pequeno conteiner de seleção
          Positioned(
            top: -30,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 210,
                height: 80,
                decoration: BoxDecoration(
                  color: theme.background2,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: theme.background, width: 10),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedAlign(
                      alignment: selectTypeGraphic,

                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      child: Container(
                        width: 65,
                        height: 80,
                        decoration: BoxDecoration(
                          color: theme.background2.withValues(
                            alpha: 0.15,
                            red: 1.0,
                            green: 1.0,
                            blue: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              setState(() {
                                selectTypeGraphic = Alignment.centerLeft;
                              });
                            },
                            child: SizedBox(
                              height: 100,
                              width: 50,

                              child: Center(
                                child: Icon(
                                  Icons.receipt_long,
                                  color: theme.icons,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              setState(() {
                                selectTypeGraphic = Alignment.center;
                              });
                            },
                            child: SizedBox(
                              height: 100,
                              width: 50,
                              child: Center(
                                child: Icon(
                                  Icons.calendar_month,
                                  color: theme.icons,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              setState(() {
                                selectTypeGraphic = Alignment.centerRight;
                              });
                            },
                            child: SizedBox(
                              height: 100,
                              width: 50,
                              child: Center(
                                child: Icon(
                                  Icons.trending_up,
                                  color: theme.icons,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
