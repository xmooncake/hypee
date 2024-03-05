import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

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
        child: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                TextButton(
                  onPressed: () {},
                  child: const Text('Zapomniałeś hasła?'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Nie masz konta?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Zarejestruj się'),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text('Kontynuuj bez logowania'),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
