import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:hypee/features/shared/components/labeled_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zarejestruj się'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            LabeledTextField(
              widthModifier: 0.4,
              cardColor: Colors.white,
              obscureText: true,
              labelText: 'Imię',
              hintText: 'Wprowadź imię',
            ),
            LabeledTextField(
              widthModifier: 0.4,
              cardColor: Colors.white,
              obscureText: true,
              labelText: 'Nazwisko',
              hintText: 'Wprowadź nazwisko',
            ),
            LabeledTextField(
              widthModifier: 0.4,
              cardColor: Colors.white,
              obscureText: true,
              labelText: 'Adres e-mail',
              hintText: 'Wprowadź adres e-mail',
            ),
            LabeledTextField(
              widthModifier: 0.4,
              cardColor: Colors.white,
              obscureText: true,
              labelText: 'Hasło',
              hintText: 'Wprowadź hasło',
            ),
            LabeledTextField(
              widthModifier: 0.4,
              cardColor: Colors.white,
              obscureText: true,
              labelText: 'Powtórz hasło',
              hintText: 'Wprowadź hasło ponownie',
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Zarejestruj się'),
            ),
            Row(
              children: [
                const Text('Lub kontynuuj z:'),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/google.svg',
                    width: 28,
                    height: 28,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/apple.svg',
                    width: 28,
                    height: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
