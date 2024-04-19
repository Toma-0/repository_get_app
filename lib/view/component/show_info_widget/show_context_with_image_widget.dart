import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

class ShowContextWithImage extends ConsumerWidget {
  const ShowContextWithImage({
    required this.imageAssetsUri,
    required this.title,
    required this.message,
    super.key,
  });
  final String imageAssetsUri;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioWidth = ref.watch(SizeNotifierProvider(context)).ratioSizeWidth;
    final ratioHeight = ref.watch(SizeNotifierProvider(context)).ratioSizeHight;
    return Center(
      child: SizedBox(
        height: ratioHeight * 70,
        width: ratioWidth * 60,
        child: Column(
          children: [
            Gap(ratioHeight * 20),
            SizedBox(
              height: ratioWidth * 40,
              child: Image.asset(
                imageAssetsUri,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            Gap(ratioHeight * 2),
            Text(
              message,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
