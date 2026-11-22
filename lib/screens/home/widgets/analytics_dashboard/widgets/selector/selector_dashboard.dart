import 'package:app_financeiro_autoral/screens/home/widgets/analytics_dashboard/types_dashboard.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectorDashboard extends StatefulWidget {
  const SelectorDashboard({super.key, required this.onChanged});
  final ValueChanged<DashboardType> onChanged;

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
              DashboardSelectorButton(
                icon: Icons.receipt_long,
                isSelected: receiptLongClicked,
                color: colorIcons,
                onTap: () {
                  setState(() {
                    receiptLongClicked = true;
                    calendarMothClicked = false;
                    trendingUpClicked = false;
                    selectTypeGraphic = Alignment.centerLeft;
                    widget.onChanged(DashboardType.receipts);
                  });
                },
              ),

              DashboardSelectorButton(
                icon: Icons.calendar_month,
                isSelected: calendarMothClicked,
                color: colorIcons,
                onTap: () {
                  setState(() {
                    receiptLongClicked = false;
                    calendarMothClicked = true;
                    trendingUpClicked = false;
                    selectTypeGraphic = Alignment.center;
                    widget.onChanged(DashboardType.calendar);
                  });
                },
              ),

              DashboardSelectorButton(
                icon: Icons.trending_up,
                isSelected: trendingUpClicked,
                color: colorIcons,
                onTap: () {
                  setState(() {
                    receiptLongClicked = false;
                    calendarMothClicked = false;
                    trendingUpClicked = true;
                    selectTypeGraphic = Alignment.centerRight;
                    widget.onChanged(DashboardType.trends);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashboardSelectorButton extends StatelessWidget {
  const DashboardSelectorButton({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.color,
  });

  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: SizedBox(
          height: 100,
          width: 50,
          child: Center(
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 1.0, end: isSelected ? 1.3 : 1.0),
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              builder: (context, scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: Icon(icon, color: color),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
