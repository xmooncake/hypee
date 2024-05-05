import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zaloguj się'),
      ),
      body: Center(
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Hasło',
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Zaloguj się')),
          ],
        ),
      ),
    );
  }
}
