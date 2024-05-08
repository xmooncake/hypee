import 'package:flutter/material.dart';
import 'package:hypee/services/url_launcher/url_launcher.service.dart';
import 'package:lottie/lottie.dart';

class SellView extends StatelessWidget {
  const SellView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset('assets/lottie/sad.json'),
          const SizedBox(height: 20),
          Text(
            'Funkcjonalność niedostępna',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const Text(
                    'Niestety ale dalej pracujemy nad tą funkcjonalnością.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Przejdź do panelu web aby wystawić przedmioty:',
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(color: Colors.blue),
                    ),
                    onPressed: () => UrlLauncherService.open(
                      'https://hypee.pl/moje-konto/produkty',
                    ),
                    child: const Text('Kliknij tutaj'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
