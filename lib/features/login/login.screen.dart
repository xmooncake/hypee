import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:hypee/features/app/router.dart';
import 'package:hypee/features/login/cubit/login_cubit.dart';
import 'package:hypee/features/shared/components/labeled_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/brand/logo.svg',
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const Text('Dobrze Cię widzieć!'),
            const Text(
              "Zostań częścią naszej streetwear'owej społeczności i kupuj, sprzedawaj oraz wymieniaj!",
            ),
            LabeledTextField(
              cardColor: Colors.white,
              labelText: 'Login',
              hintText: 'Wprowadź nazwę użytkownika lub email',
            ),
            LabeledTextField(
              cardColor: Colors.white,
              obscureText: true,
              labelText: 'Hasło',
              hintText: 'Wprowadź hasło',
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Zaloguj'),
            ),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text('lub zaloguj się przez'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/google.svg',
                    height: 25,
                    width: 25,
                  ),
                  label: const Text('Google'),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/apple.svg',
                    height: 25,
                    width: 25,
                  ),
                  label: const Text('Apple'),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Zapomniałeś hasła?'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Nie masz konta?'),
                // TODO: Use AppBloc instead
                TextButton(
                  onPressed: () => context.go(AppRouter.kRegister),
                  child: const Text('Zarejestruj się'),
                ),
              ],
            ),
            TextButton(
              // TODO: Use AppBloc instead
              onPressed: () => context.go(AppRouter.kHome),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Kontynuuj bez logowania'),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
