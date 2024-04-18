import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShowDescriptionWidget extends StatelessWidget {
  const ShowDescriptionWidget({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              const WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: Icon(Icons.summarize_outlined),
                ),
              ),
              TextSpan(
                text: 'description',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),
        const Gap(4),
        Text(description),
      ],
    );
  }
}
