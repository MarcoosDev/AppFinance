import 'package:app_financeiro_autoral/settings/app_colors.dart';
import 'package:flutter/material.dart';

class BottonsHomeCenter extends StatelessWidget {
  const BottonsHomeCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: _HomeActionButton(
              icon: Icons.arrow_upward,
              label: "Adicionar ganho",
              onTap: () {},
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _HomeActionButton(
              icon: Icons.arrow_downward,
              label: "Adicionar gasto",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeActionButton extends StatelessWidget {
  const _HomeActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        splashColor: const Color.fromARGB(100, 100, 100, 100),
        child: Ink(
          height: 80,
          decoration: BoxDecoration(
            color: theme.backgroundButtonsFlutuant,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, color: theme.iconsButtonsFlutuant, size: 30),
                  const SizedBox(width: 10),
                  Text(
                    label,
                    style: TextStyle(
                      color: theme.iconsButtonsFlutuant,
                      fontSize: 20,
                      fontFamily: "NotoSansCypriot",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
