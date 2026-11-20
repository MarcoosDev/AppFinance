import 'package:app_financeiro_autoral/screens/home/settings/home_page_colors.dart';
import 'package:flutter/material.dart';

class BottonsHomeCenter extends StatelessWidget {
  const BottonsHomeCenter({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),

            splashColor: const Color.fromARGB(100, 100, 100, 100),

            child: Ink(
              height: 80,
              width: 220,

              decoration: BoxDecoration(
                color: theme.backgroundButtonsFlutuant,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: theme.iconsButtonsFlutuant,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Adicionar ganho",
                    style: TextStyle(
                      color: theme.iconsButtonsFlutuant,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 50),

        // Material(
        //   color: Colors.transparent,
        //   child: InkWell(
        //     onTap: () {},
        //     borderRadius: BorderRadius.circular(20),

        //     splashColor: const Color.fromARGB(100, 100, 100, 100),

        //     child: Ink(
        //       height: 80,
        //       width: 80,

        //       decoration: BoxDecoration(
        //         color: theme.background2,
        //         borderRadius: BorderRadius.circular(20),
        //       ),
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.center,

        //         children: [Icon(Icons.calendar_month, color: theme.icons2)],
        //       ),
        //     ),
        //   ),
        // ),

        // const SizedBox(width: 25),
        Material(
          color: Colors.transparent,

          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),

            splashColor: const Color.fromARGB(100, 100, 100, 100),

            child: Ink(
              height: 80,
              width: 220,

              decoration: BoxDecoration(
                color: theme.backgroundButtonsFlutuant,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.remove_circle_outline,
                    color: theme.iconsButtonsFlutuant,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Adicionar gasto",
                    style: TextStyle(
                      color: theme.iconsButtonsFlutuant,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
