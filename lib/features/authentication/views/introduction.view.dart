import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:hypee/features/authentication/components/authentication_outlined_button.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),
        SvgPicture.asset(
          'assets/brand/logo.svg',
          width: 25,
          height: 25,
        ),
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "Zostań częścią naszej streetwear'owej społeczności i kupuj, sprzedawaj oraz wymieniaj!",
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        AuthenticationOutlinedButton(
          onPressed: () => context.go('/introduction/login'),
          label: 'Zaloguj się',
        ),
        OutlinedButton.icon(
          onPressed: null,
          icon: SvgPicture.asset(
            'assets/icons/google.svg',
            width: 20,
            height: 20,
          ),
          label: const Text(
            'Kontynuuj z Google',
          ),
        ),
        OutlinedButton.icon(
          onPressed: null,
          icon: SvgPicture.asset(
            'assets/icons/apple.svg',
            width: 20,
            height: 20,
          ),
          label: const Text('Kontynuuj z Apple'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Nie masz konta?'),
            TextButton(onPressed: () {}, child: const Text('Zarejestruj się')),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
