part of 'repository_detail_screen.dart';

class RepositoryDetailBody extends ConsumerWidget {
  const RepositoryDetailBody({
    super.key,
    required this.data,
  });
  final RepositoryDetailState data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioHeight = ref.watch(sizeNotifierProvider).ratioSizeHight;
    final ratioWidth = ref.watch(sizeNotifierProvider).ratioSizeWidth;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        label: I10n().labelIssues,
                        icon: Icons.adjust,
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
          Padding(
            padding: EdgeInsets.only(
              left: 8,
              right: 8,
              top: ratioHeight * 3,
              bottom: ratioHeight,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  const WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(Icons.adjust),
                    ),
                    alignment: PlaceholderAlignment.middle,
                  ),
                  TextSpan(
                    text: I10n().labelIssues,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (final IssueState issue in data.issueState)
                    IssueInfoCard(
                      issue: issue,
                    ),
                  SizedBox(
                    width: ratioWidth * 30,
                    height: ratioHeight * 30,
                    child: Card(
                      child: IconButton(
                        onPressed: () =>
                            launchUrlString('${data.repositoryUrl}/issues'),
                        icon: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.arrow_right_alt),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(ratioHeight * 5),
        ],
      ),
    );
  }
}
