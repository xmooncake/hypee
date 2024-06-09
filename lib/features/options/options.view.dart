import 'package:flutter/material.dart';

// TODO
class OptionsView extends StatelessWidget {
  const OptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                CircleAvatar(child: Icon(Icons.person)),
                Text('Jakub Jakiś'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
