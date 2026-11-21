import 'package:app_financeiro_autoral/settings/app_colors.dart';
import 'package:flutter/material.dart';

class SelectorDashboard extends StatefulWidget {
  const SelectorDashboard({super.key});

  @override
  State<SelectorDashboard> createState() => _SelectorDashboard();
}

class _SelectorDashboard extends State<SelectorDashboard> {
  Alignment selectTypeGraphic = Alignment.centerLeft;

  static Color colorIcons = theme.iconsButtonsFlutuant;
  static Color colorSelector = theme.primary;

  bool receiptLongClicked = true;
  bool calendarMothClicked = false;
  bool trendingUpClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 80,
      decoration: BoxDecoration(
        color: theme.backgroundButtonsFlutuant,
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
                color: colorSelector,
                border: Border.all(
                  color: theme.primary.withAlpha(150),
                  width: 5,
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
                      receiptLongClicked = true;
                      calendarMothClicked = false;
                      trendingUpClicked = false;
                      selectTypeGraphic = Alignment.centerLeft;
                    });
                  },
                  child: SizedBox(
                    height: 100,
                    width: 50,

                    child: Center(
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(
                          begin: 1.0,
                          end: receiptLongClicked ? 1.3 : 1.0,
                        ),
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        builder: (context, scale, child) {
                          return Transform.scale(
                            scale: scale,
                            child: Icon(Icons.receipt_long, color: colorIcons),
                          );
                        },
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
                      receiptLongClicked = false;
                      calendarMothClicked = true;
                      trendingUpClicked = false;
                      selectTypeGraphic = Alignment.center;
                    });
                  },
                  child: SizedBox(
                    height: 100,
                    width: 50,
                    child: Center(
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(
                          begin: 1.0,
                          end: calendarMothClicked ? 1.3 : 1.0,
                        ),
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        builder: (context, scale, child) {
                          return Transform.scale(
                            scale: scale,
                            child: Icon(
                              Icons.calendar_month,
                              color: colorIcons,
                            ),
                          );
                        },
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
                      receiptLongClicked = false;
                      calendarMothClicked = false;
                      trendingUpClicked = true;
                      selectTypeGraphic = Alignment.centerRight;
                    });
                  },
                  child: SizedBox(
                    height: 100,
                    width: 50,
                    child: Center(
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(
                          begin: 1.0,
                          end: trendingUpClicked ? 1.3 : 1.0,
                        ),
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        builder: (context, scale, child) {
                          return Transform.scale(
                            scale: scale,
                            child: Icon(Icons.trending_up, color: colorIcons),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
