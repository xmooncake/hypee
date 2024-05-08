import 'package:flutter/material.dart';
import 'package:hypee/features/product/components/product.card.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Center(
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.15,
              width: size.width,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/images/mock-ad.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  Card(
                    child: Row(),
                  ),
                ],
              ),
            ),
            mockSection(size),
            mockSection(size),
          ],
        ),
      ),
    );
  }

  Expanded mockSection(Size size) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              'Wybrane dla Ciebie',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: size.height * 0.5,
            width: 2000,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => const ProductCard()),
            ),
          ),
        ],
      ),
    );
  }
}
