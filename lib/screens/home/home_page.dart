import 'package:app_financeiro_autoral/models/user_model.dart';
import 'package:app_financeiro_autoral/screens/home/widgets/analystics_dashboard/analystics_dashboard.dart';
import 'package:app_financeiro_autoral/screens/home/widgets/home_bottons/bottons_home.dart';
import 'package:app_financeiro_autoral/screens/home/widgets/home_app_bar/home_app_bar.dart';
import 'package:app_financeiro_autoral/settings/app_colors.dart';
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
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            BottonsHomeCenter(),
            const SizedBox(height: 50),
            Expanded(child: AnalysticsDashboard()),
          ],
        ),
      ),
    );
  }
}
