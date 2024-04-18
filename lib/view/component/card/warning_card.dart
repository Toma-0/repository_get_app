import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

class WarningCard extends ConsumerWidget {
  const WarningCard({super.key, required this.title, required this.message});
  final String title;
  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = ref.watch(SizeNotifierProvider(context)).ratioSizeHight;
    final width = ref.watch(SizeNotifierProvider(context)).ratioSizeWidth;
    return SizedBox(
      width: double.infinity,
      height: ref.watch(SizeNotifierProvider(context)).ratioSizeHight * 15,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: height * 2,
        ),
        child: Card(
          color: Theme.of(context).colorScheme.errorContainer,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: height * 2,
              vertical: width * 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(
                  ref.watch(SizeNotifierProvider(context)).ratioSizeHight * 1,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.warning_amber_outlined,
                          size: 20,
                        ),
                      ),
                      TextSpan(
                        text: title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}