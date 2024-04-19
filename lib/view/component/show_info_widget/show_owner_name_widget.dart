import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

class ShowOwnerNameWidget extends ConsumerWidget {
  const ShowOwnerNameWidget({
    super.key,
    required this.ownerName,
  });
  final String ownerName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioWidth = ref.watch(SizeNotifierProvider(context)).ratioSizeWidth;

    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(left: ratioWidth * 2),
              child: const Icon(
                Icons.person_2_outlined,
                size: 14,
              ),
            ),
          ),
          TextSpan(
            text: ownerName,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
