import 'package:app_financeiro_autoral/config/app_colors.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({
    super.key,
    required this.label,
    required this.children,
  });
  final String label;
  final List<SettingOption> children;
  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: theme.iconsButtonsFlutuant,
            fontFamily: "NotoSansCypriot",
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 10),

        ...widget.children,
      ],
    );
  }
}

class SettingOption extends StatelessWidget {
  const SettingOption({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => {},
        child: Ink(
          height: 50,
          decoration: BoxDecoration(
            color: theme.backgroundButtonsFlutuant,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            spacing: 12.0,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 0),
              Icon(icon, color: theme.icons),
              Text(label, style: TextStyle(color: theme.icons)),
            ],
          ),
        ),
      ),
    );
  }
}
