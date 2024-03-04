import 'package:flutter/material.dart';

import 'package:hypee/features/product/components/product.card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ProductCard(),
      ),
    );
  }
}
