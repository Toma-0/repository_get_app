import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_owner_image_widget.dart';

class ShowOnerInfoWidget extends ConsumerWidget {
  const ShowOnerInfoWidget({
    super.key,
    required this.ownerImageUri,
    required this.ownerName,
  });
  final String ownerImageUri;
  final String ownerName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ShowOwnerImageCircleWidget(
                ownerImageUri: ownerImageUri,
                sizeCircle: 5,
              ),
            ),
          ),
          TextSpan(
            text: ownerName,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
