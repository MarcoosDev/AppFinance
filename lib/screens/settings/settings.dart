import 'package:app_financeiro_autoral/screens/settings/widgets/options_widgets.dart';
import 'package:app_financeiro_autoral/screens/settings/widgets/theme_widget.dart';
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
    return ValueListenableBuilder<ColorTheme>(
      valueListenable: ThemeApp.notifier,
      builder: (context, atual, _) {
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
            child: Column(
              children: [
                ThemeWidget(),
                SettingsWidget(
                  label: "Geral",
                  children: [
                    SettingOption(icon: Icons.person, label: "Conta"),
                    SettingOption(
                      icon: Icons.notifications,
                      label: "Notificações",
                    ),
                    SettingOption(icon: Icons.security, label: "Segurança"),
                    SettingOption(
                      icon: Icons.backup,
                      label: "Backup e restauração",
                    ),
                    SettingOption(
                      icon: Icons.import_export,
                      label: "Importar e exportar",
                    ),
                    SettingOption(
                      icon: Icons.accessibility_new,
                      label: "Acessibilidade",
                    ),
                    SettingOption(
                      icon: Icons.language,
                      label: "Idioma e região",
                    ),
                    SettingOption(icon: Icons.storage, label: "Armazenamento"),
                  ],
                ),
                SettingsWidget(
                  label: "Específicos",
                  children: [
                    SettingOption(icon: Icons.calculate, label: "Cálculo"),
                    SettingOption(
                      icon: Icons.account_balance_wallet,
                      label: "Dinheiro livre",
                    ),
                    SettingOption(icon: Icons.savings, label: "Caixinhas"),
                    SettingOption(
                      icon: Icons.account_balance,
                      label: "Contas e carteiras",
                    ),
                    SettingOption(
                      icon: Icons.category,
                      label: "Categorias e tags",
                    ),
                    SettingOption(icon: Icons.flag, label: "Orçamento e metas"),
                    SettingOption(
                      icon: Icons.credit_card,
                      label: "Cartões e faturas",
                    ),
                    SettingOption(
                      icon: Icons.notifications_active,
                      label: "Alertas",
                    ),
                    SettingOption(icon: Icons.trending_up, label: "Simulador"),
                  ],
                ),
                SettingsWidget(
                  label: "Ajuda",
                  children: [
                    SettingOption(
                      icon: Icons.help_outline,
                      label: "Ajuda e tutorial",
                    ),
                    SettingOption(
                      icon: Icons.feedback,
                      label: "Enviar feedback",
                    ),
                    SettingOption(icon: Icons.info_outline, label: "Sobre"),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
