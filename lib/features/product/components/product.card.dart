import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hypee/features/product/components/secondary_card.dart';
import 'package:hypee/features/product/components/seller_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  final width = 300.0;
  final height = 500.0;

  @override
  Widget build(BuildContext context) {
    Row productMeta(String label, String value) => Row(
          children: [
            Text('$label:', style: Theme.of(context).textTheme.labelSmall),
            const Spacer(),
            SecondaryCard(
              child:
                  Text(value, style: Theme.of(context).textTheme.labelMedium),
            ),
          ],
        );

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15),
          child: Card(
            elevation: 4,
            surfaceTintColor: Colors.white,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.zero,
              height: height,
              width: width,
              child: LayoutBuilder(
                builder: (context, constraints) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          'assets/images/mock-item.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Nike'),
                            Text(
                              'Nike dunk low sb yuto Horigome',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const Spacer(),
                            productMeta('Stan', 'Nowy'),
                            const SizedBox(height: 10),
                            productMeta('Rozmiar', '38'),
                            const Spacer(),
                            Text(
                              'Dodane przez',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            const SizedBox(height: 5),
                            const SellerCard(username: 'Jakub Kowalski'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        priceLabel(),
      ],
    );
  }

  Positioned priceLabel() {
    return Positioned(
      bottom: 10,
      right: 10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '950 PLN',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            fontFamily: GoogleFonts.montserrat().fontFamily,
          ),
        ),
      ),
    );
  }
}
