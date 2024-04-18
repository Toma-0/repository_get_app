import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:repository_get_app/model/repository_list/repository_list_state.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

class RepositoryListCard extends ConsumerWidget {
  const RepositoryListCard({super.key, required this.repositoryListState});
  final RepositoryListState repositoryListState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioWidth = ref.watch(SizeNotifierProvider(context)).ratioSizeWidth;
    final ratioHeight = ref.watch(SizeNotifierProvider(context)).ratioSizeHight;

    final inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ssZ');
    final outputFormat = DateFormat('yyyy/MM/dd');

    String date(String updatedAt) {
      return outputFormat.format(
        inputFormat.parse(updatedAt),
      );
    }

    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: ratioHeight * 2,
          horizontal: ratioWidth * 3,
        ),
        child: Row(
          children: [
            Container(
              width: ratioWidth * 15,
              height: ratioWidth * 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    repositoryListState.ownerImageUri,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: ratioWidth * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repositoryListState.repositoryName,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      repositoryListState.description,
                      style: Theme.of(context).textTheme.bodySmall?.apply(
                            color: Theme.of(context).colorScheme.surfaceTint,
                          ),
                    ),
                    Gap(ratioHeight * 1),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.update,
                                    size: 14,
                                  ),
                                ),
                                TextSpan(
                                  text: date(repositoryListState.updatedAt),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: ratioWidth * 2),
                                    child: const Icon(
                                      Icons.person_2_outlined,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: repositoryListState.ownerName,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(Icons.star, size: 14),
                                ),
                                TextSpan(
                                  text: repositoryListState.starCount,
                                  style: Theme.of(context).textTheme.labelSmall,
                                  spellOut: false,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
