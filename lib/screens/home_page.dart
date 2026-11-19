import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 51, 51),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(280),

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromARGB(255, 198, 210, 232),
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
                          color: Colors.black,
                          fontFamily: "Arial",
                        ),
                      ),
                      Text(
                        "Marcos!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: "Arial",
                        ),
                      ),
                    ],
                  ),

                  Spacer(),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Saldo disponível",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,

                        children: [
                          Text(
                            "R\$12.229",
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Gothic",
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            ",20",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 64, 64, 64),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),

      body: Center(child: Text("Conteúdo")),

      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 45, 45, 45),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.trending_up),
              color: Colors.white,
              iconSize: 30,
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month),
              color: Colors.white,
              iconSize: 30,
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.receipt_long_outlined),
              color: Colors.white,
              iconSize: 30,
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.grid_view_rounded),
              color: Colors.white,
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
