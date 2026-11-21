import 'package:flutter/material.dart';
import 'package:app_financeiro_autoral/settings/app_colors.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(width: 12),

                BottonsConfig(
                  icon: Icons.person,
                  text: "Conta",
                  onTap: () => {},
                ),
                const SizedBox(width: 12),

                BottonsConfig(
                  icon: Icons.credit_card,
                  text: "Cartões",
                  onTap: () => {},
                ),
                const SizedBox(width: 12),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                const SizedBox(width: 12),

                BottonsConfig(
                  icon: Icons.color_lens,
                  text: "Tema",
                  onTap: () => {},
                ),
                const SizedBox(width: 12),

                BottonsConfig(
                  icon: Icons.notifications,
                  text: "Notificações",
                  onTap: () => {},
                ),
                const SizedBox(width: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottonsConfig extends StatelessWidget {
  const BottonsConfig({
    super.key,
    required this.icon,
    required this.onTap,
    required this.text,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: const Color.fromARGB(100, 100, 100, 100),
        onTap: () => {},
        child: Ink(
          height: 300,
          decoration: BoxDecoration(
            color: theme.backgroundButtonsFlutuant,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: theme.iconsButtonsFlutuant),
              SizedBox(height: 12),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  color: theme.iconsButtonsFlutuant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
