import 'package:flutter/material.dart';

class LabeledField extends StatelessWidget {
  const LabeledField({
    this.icon,
    required this.labelText,
    this.widthModifier,
    this.heightModifier,
    required this.child,
    this.shouldWrapInCard = true,
    this.cardColor,
  });

  final Widget? icon;
  final String? labelText;
  final double? widthModifier;
  final double? heightModifier;
  final Widget child;
  final bool shouldWrapInCard;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthModifier != null
          ? MediaQuery.of(context).size.width * widthModifier!
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              icon ?? const SizedBox(),
              SizedBox(width: icon == null ? 0 : 8),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  labelText ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          if (shouldWrapInCard) _buildCard(context) else child,
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context) {
    return Card(
      color: cardColor,
      surfaceTintColor: cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          height: heightModifier != null
              ? MediaQuery.of(context).size.height * heightModifier!
              : null,
          child: child,
        ),
      ),
    );
  }
}
