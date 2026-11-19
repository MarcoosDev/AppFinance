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
                      Spacer(),

                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 215, 229, 255),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.notifications),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 215, 229, 255),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.settings),
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
                              fontFamily: "Gothic",
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 64, 64, 64),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Saldo disponível",
                        style: TextStyle(fontSize: 20, color: Colors.black54),
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

      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Row(
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

                        children: [Icon(Icons.settings)],
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
            ),

            const SizedBox(height: 25),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 216, 216, 216),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                padding: const EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
