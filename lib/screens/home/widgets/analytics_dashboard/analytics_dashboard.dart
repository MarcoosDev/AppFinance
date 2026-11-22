import 'package:app_financeiro_autoral/screens/home/widgets/analytics_dashboard/widgets/selector/selector_dashboard.dart';
import 'package:app_financeiro_autoral/screens/home/widgets/analytics_dashboard/types_dashboard.dart';
import 'package:app_financeiro_autoral/settings/app_colors.dart';
import 'package:flutter/material.dart';

class AnalyticsDashboard extends StatefulWidget {
  const AnalyticsDashboard({super.key});
  @override
  State<AnalyticsDashboard> createState() => _AnalyticsDashboard();
}

class _AnalyticsDashboard extends State<AnalyticsDashboard> {
  DashboardType dashboardType = DashboardType.receipts;

  void setTypeDashboard(DashboardType type) {
    setState(() {
      dashboardType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              decoration: BoxDecoration(
                color: theme.backgroundAnalytics,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
            );
          },
        ),

        Positioned(
          top: -30,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: SelectorDashboard(
              onChanged: (value) => setTypeDashboard(value),
            ),
          ),
        ),
      ],
    );
  }
}
