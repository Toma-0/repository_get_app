import 'package:flutter/material.dart';

class ShowUpdataAtWidget extends StatelessWidget {
  const ShowUpdataAtWidget({super.key, required this.updatedAt});
  final String updatedAt;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Icon(
              Icons.update,
              size: 14,
            ),
          ),
          TextSpan(
            text: updatedAt,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
