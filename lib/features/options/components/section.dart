import 'package:flutter/material.dart';
import 'package:hypee/features/options/components/section_tile.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.options,
  });

  final List<SectionTile> options;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: options,
        ),
      ),
    );
  }
}
