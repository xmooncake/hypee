import 'package:flutter/material.dart';
import 'package:hypee/features/options/components/section.dart';
import 'package:hypee/features/options/components/section_tile.dart';
import 'package:icons_plus/icons_plus.dart';

// TODO
class OptionsView extends StatelessWidget {
  const OptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cześć, Jakub!',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'mail@gmail.com',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 107, 107, 107),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.account_circle, size: 52),
              ],
            ),
          ),
          Section(
            options: [
              SectionTile(
                icon: HeroIcons.heart,
                label: 'Polubione',
                onTap: () {},
              ),
              SectionTile(
                icon: HeroIcons.user,
                label: 'Konto',
                onTap: () {},
              ),
              SectionTile(
                icon: HeroIcons.lifebuoy,
                label: 'Pomoc',
                onTap: () {},
              ),
            ],
          ),
          Section(
            options: [
              SectionTile(
                icon: HeroIcons.bell,
                label: 'Ustawienia powiadomień',
                onTap: () {},
              ),
              SectionTile(
                icon: HeroIcons.swatch,
                label: 'Ustawienia wyglądu',
                onTap: () {},
              ),
              SectionTile(
                icon: HeroIcons.swatch,
                label: 'Szczegóły aplikacji',
                onTap: () {},
              ),
            ],
          ),
          Section(
            options: [
              SectionTile(
                icon: HeroIcons.arrow_right_on_rectangle,
                label: 'Wyloguj',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
