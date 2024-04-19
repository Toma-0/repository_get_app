part of 'repository_detail_screen.dart';

class RepositoryDetailBody extends ConsumerWidget {
  const RepositoryDetailBody({
    super.key,
    required this.data,
  });
  final RepositoryDetailState data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioHeight = ref.watch(SizeNotifierProvider(context)).ratioSizeHight;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ShowUpdataAtWidget(
              updatedAt: ref
                  .watch(homeScreenNotifierProvider.notifier)
                  .formatDate(data.updatedAt),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ShowOnerInfoWidget(
                ownerImageUri: data.ownerImageUri,
                ownerName: data.ownerName,
              ),
            ),
          ],
        ),
        Gap(ratioHeight * 2),
        ShowWidgesCard(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShowCountWidget(
                      count: data.starsCount,
                      label: I10n().labelStars,
                      icon: Icons.star_outline,
                    ),
                    const Gap(8),
                    ShowCountWidget(
                      count: data.watchersCount,
                      label: I10n().labelWatching,
                      icon: Icons.remove_red_eye_outlined,
                    ),
                    const Gap(8),
                    ShowCountWidget(
                      count: data.forksCount,
                      label: I10n().labelForks,
                      icon: Icons.fork_right,
                    ),
                    const Gap(8),
                    ShowCountWidget(
                      count: data.issuesCount,
                      label: I10n().labelForks,
                      icon: Icons.info_outline,
                    ),
                  ],
                ),
                ShowDescriptionWidget(
                  description: data.description,
                ),
              ],
            ),
            const Divider(),
            ShowLanguageWidget(
              language: data.language,
            ),
          ],
        ),
      ],
    );
  }
}
