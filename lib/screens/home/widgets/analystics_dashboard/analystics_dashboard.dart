import 'package:app_financeiro_autoral/screens/home/widgets/analystics_dashboard/selector_dashboard.dart';
import 'package:app_financeiro_autoral/settings/app_colors.dart';
import 'package:flutter/material.dart';

class AnalysticsDashboard extends StatefulWidget {
  const AnalysticsDashboard({super.key});

  @override
  State<AnalysticsDashboard> createState() => _AnalysticsDashboard();
}

class _AnalysticsDashboard extends State<AnalysticsDashboard> {
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
                color: theme.backgroundAnalystics,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
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
              child: SelectorDashboard(),
            ),
          ),
        ],
      ),
    );
  }
}
