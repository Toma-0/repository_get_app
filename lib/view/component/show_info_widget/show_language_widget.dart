import 'package:flutter/material.dart';

class ShowLanguageWidget extends StatelessWidget {
  const ShowLanguageWidget({super.key, required this.language});
  final String language;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: EdgeInsets.only(right: 2),
              child: Icon(Icons.code),
            ),
          ),
          TextSpan(
            text: language,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
