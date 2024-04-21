import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

class ShowOwnerImageCircleWidget extends ConsumerWidget {
  const ShowOwnerImageCircleWidget({
    super.key,
    required this.ownerImageUri,
    required this.sizeCircle,
  });
  final String ownerImageUri;
  final int sizeCircle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioWidth = ref.watch(sizeNotifierProvider).ratioSizeWidth;

    return Container(
      width: ratioWidth * sizeCircle,
      height: ratioWidth * sizeCircle,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            ownerImageUri,
          ),
        ),
      ),
    );
  }
}
