import 'package:app_financeiro_autoral/screens/home/widgets/analystics_dashboard/selector_dashboard.dart';
import 'package:app_financeiro_autoral/screens/home/widgets/analystics_dashboard/types_dashboard.dart';
import 'package:app_financeiro_autoral/settings/app_colors.dart';
import 'package:flutter/material.dart';

class AnalysticsDashboard extends StatefulWidget {
  const AnalysticsDashboard({super.key});
  @override
  State<AnalysticsDashboard> createState() => _AnalysticsDashboard();
}

class _AnalysticsDashboard extends State<AnalysticsDashboard> {
  DashboardType dashboardType = DashboardType.receipts;

  Color teee = theme.backgroundAnalystics;

  List<Color> colorDash = [
    Colors.amber,
    Colors.black,
    theme.backgroundAnalystics,
  ];
  void setTypeDashboard(DashboardType type) {
    setState(() {
      dashboardType = type;
      if (dashboardType == DashboardType.trends) {
        teee = colorDash[0];
      }
      if (dashboardType == DashboardType.calendar) {
        teee = colorDash[1];
      }
      if (dashboardType == DashboardType.receipts) {
        teee = colorDash[2];
      }
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
                color: teee,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(constraints.maxHeight),
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
