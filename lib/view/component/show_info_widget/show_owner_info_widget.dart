import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

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
    final ratioWidth = ref.watch(SizeNotifierProvider(context)).ratioSizeWidth;
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                width: ratioWidth * 5,
                height: ratioWidth * 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      ownerImageUri,
                    ),
                  ),
                ),
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
