import 'package:flutter/material.dart';

class ShowCountWidget extends StatelessWidget {
  const ShowCountWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.count,
  });
  final String label;
  final IconData icon;
  final String count;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 2,
                      ),
                      child: Icon(
                        icon,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '$count $label',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
