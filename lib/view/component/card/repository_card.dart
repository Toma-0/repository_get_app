import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:repository_get_app/model/repository_list/repository_list_state.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_owner_image_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_owner_name_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_stars_count_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_update_at_widget.dart';
import 'package:repository_get_app/view_model/home/home_screen_notifier.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

class RepositoryListCard extends ConsumerWidget {
  const RepositoryListCard({super.key, required this.repositoryListState});
  final RepositoryListState repositoryListState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioWidth = ref.watch(sizeNotifierProvider).ratioSizeWidth;
    final ratioHeight = ref.watch(sizeNotifierProvider).ratioSizeHight;

    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: ratioHeight * 2,
          horizontal: ratioWidth * 3,
        ),
        child: Row(
          children: [
            ShowOwnerImageCircleWidget(
              ownerImageUri: repositoryListState.ownerImageUri,
              sizeCircle: 15,
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
                          child: Row(
                            children: [
                              ShowUpdataAtWidget(
                                updatedAt: ref
                                    .watch(homeScreenNotifierProvider.notifier)
                                    .formatDate(repositoryListState.updatedAt),
                              ),
                              ShowOwnerNameWidget(
                                ownerName: repositoryListState.ownerName,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ShowStarsCountWidget(
                            starsCount: repositoryListState.starsCount,
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
