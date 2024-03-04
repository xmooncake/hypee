import 'package:flutter/material.dart';

import 'package:hypee/features/product/components/secondary_card.dart';

class SellerCard extends StatelessWidget {
  const SellerCard({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    const color = Color.fromARGB(255, 207, 207, 207);

    return SecondaryCard(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            color: color,
            surfaceTintColor: color,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(2.0),
              child: const Icon(Icons.person, size: 14),
            ),
          ),
          const SizedBox(width: 5),
          Text(username, style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}
