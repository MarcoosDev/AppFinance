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
              width: 190,

              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 216, 216),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.add_circle_outline),
                  const SizedBox(width: 10),
                  Text("Adicionar ganho"),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 25),

        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),

            splashColor: const Color.fromARGB(100, 100, 100, 100),

            child: Ink(
              height: 80,
              width: 80,

              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 216, 216),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [Icon(Icons.calendar_month)],
              ),
            ),
          ),
        ),

        const SizedBox(width: 25),

        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),

            splashColor: const Color.fromARGB(100, 100, 100, 100),

            child: Ink(
              height: 80,
              width: 190,

              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 216, 216),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.remove_circle_outline),
                  const SizedBox(width: 10),
                  Text("Adicionar gasto"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
