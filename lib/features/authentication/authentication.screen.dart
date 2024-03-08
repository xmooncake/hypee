import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
