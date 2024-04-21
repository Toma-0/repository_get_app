import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_get_app/model/repository_detail/issue_state.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IssueInfoCard extends ConsumerWidget {
  const IssueInfoCard({super.key, required this.issue});
  final IssueState issue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioHeight = ref.watch(sizeNotifierProvider).ratioSizeHight;
    final ratioWidth = ref.watch(sizeNotifierProvider).ratioSizeWidth;
    return SizedBox(
      width: ratioWidth * 30,
      height: ratioHeight * 30,
      child: InkWell(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  issue.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const Divider(),
                Text(
                  issue.body,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.apply(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ],
            ),
          ),
        ),
        onTap: () => launchUrlString(issue.url),
      ),
    );
  }
}
