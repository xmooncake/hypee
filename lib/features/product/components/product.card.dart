import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
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
              height: 550,
              width: 350,
              child: LayoutBuilder(
                builder: (context, constraints) => Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          'assets/images/1.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(
                              'Nike dunk low sb yuto Horigome',
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Siemka mam na sell nike dunk low sb w kolaboracji z japońskim skaterem światowej klasy Yuto Horigome Size:38✅ Stan:ds✅',
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              children: [
                                Text('Stan:'),
                                Text('Nowy'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Rozmiar:'),
                                Text('38'),
                              ],
                            ),
                            Text('Dodane przez'),
                            Text('Kuba Kowalski'),
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
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              '950 PLN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
