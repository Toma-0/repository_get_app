import 'package:flutter/material.dart';

class ShowStarsCountWidget extends StatelessWidget {
  const ShowStarsCountWidget({super.key, required this.starsCount});
  final String starsCount;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Icon(Icons.star, size: 14),
          ),
          TextSpan(
            text: starsCount,
            style: Theme.of(context).textTheme.labelSmall,
            spellOut: false,
          ),
        ],
      ),
    );
  }
}
