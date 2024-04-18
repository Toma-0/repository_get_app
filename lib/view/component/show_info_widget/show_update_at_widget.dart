import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShowUpdataAtWidget extends StatelessWidget {
  const ShowUpdataAtWidget({super.key, required this.updatedAt});
  final String updatedAt;

  @override
  Widget build(BuildContext context) {
    final inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ssZ');
    final outputFormat = DateFormat('yyyy/MM/dd');

    String date(String updatedAt) {
      return outputFormat.format(
        inputFormat.parse(updatedAt),
      );
    }

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
            text: date(updatedAt),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
