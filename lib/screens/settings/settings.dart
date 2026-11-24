import 'package:app_financeiro_autoral/screens/settings/widgets/options_widgets.dart';
import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/config/app_colors.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.iconsButtonsFlutuant),
        title: Text(
          'Configurações',
          style: TextStyle(color: theme.iconsButtonsFlutuant),
        ),
        backgroundColor: theme.background,
        foregroundColor: Colors.black,
      ),
      backgroundColor: theme.background,
      body: SingleChildScrollView(
        child: SettingsWidget(
          label: "Geral",
          children: [
            SettingOption(icon: Icons.person, label: "Conta"),
            SettingOption(icon: Icons.notifications, label: "Notificações"),
            SettingOption(icon: Icons.color_lens, label: "Cores"),
          ],
        ),
      ),
    );
  }
}
