import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:hypee/features/authentication/cubit/authentication_cubit.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(child: child),
              TextButton.icon(
                onPressed: () => context.go('/dashboard'),
                icon: const Text('Kontynuuj bez logowania'),
                label: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
