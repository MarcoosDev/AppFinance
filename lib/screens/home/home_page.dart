import 'package:app_financeiro_autoral/models/user_model.dart';
import 'package:app_financeiro_autoral/screens/home/analystics_dashboard.dart';
import 'package:app_financeiro_autoral/screens/home/bottons_home.dart';
import 'package:app_financeiro_autoral/screens/home/home_app_bar.dart';
import 'package:app_financeiro_autoral/screens/home/home_page_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.user});

  final UserModel user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(280),

        child: HomeAppBar(user: widget.user),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            BottonsHomeCenter(),
            const SizedBox(height: 40),
            AnalysticsDashboard(),
          ],
        ),
      ),
    );
  }
}
