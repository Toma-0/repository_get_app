part of 'home_screen.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = ref.watch(SizeNotifierProvider(context)).ratioSizeHight;
    final width = ref.watch(SizeNotifierProvider(context)).ratioSizeWidth;
    return RefreshIndicator(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal:
              ref.watch(SizeNotifierProvider(context)).ratioSizeWidth * 2,
        ),
        child: ref
            .watch(
              FetchRepositoryListProvider(
                ref.watch(homeScreenNotifierProvider).serchWords,
                ref.watch(homeScreenNotifierProvider).itemCount,
                '',
              ),
            )
            .when(
              data: (data) {
                if (data.repositoryListState.isEmpty) {
                  if (ref.watch(homeScreenNotifierProvider).serchWords == '') {
                    return ListView(
                      dragStartBehavior: DragStartBehavior.down,
                      children: [
                        Align(
                          child: SizedBox(
                            height: height * 70,
                            child: Column(
                              children: [
                                Gap(height * 20),
                                SizedBox(
                                  height: width * 40,
                                  child: Image.asset(
                                    'assets/image/start_search_girl.png',
                                  ),
                                ),
                                Text(
                                  '右上の検索アイコンから検索を開始しましょう',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .apply(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return ListView(
                    dragStartBehavior: DragStartBehavior.down,
                    children: [
                      Align(
                        child: SizedBox(
                          height: height * 70,
                          child: Column(
                            children: [
                              Gap(height * 17),
                              SizedBox(
                                height: width * 40,
                                child: Image.asset(
                                  'assets/image/not_found_girl.png',
                                ),
                              ),
                              Text(
                                AppLocalizations.of(context)
                                        ?.labelRepositoryNotFound ??
                                    I10n().labelRepositoryNotFound,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .apply(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                              Gap(height * 2),
                              Text(
                                AppLocalizations.of(context)
                                        ?.messageSearchingAgain ??
                                    I10n().messageSearchingAgain,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .apply(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }
                // TODO(Toma-0): ページング処理を全更新ではなくて追加する形にしたい
                return ListView.builder(
                  itemCount: data.repositoryListState.length + 1,
                  itemBuilder: (context, index) {
                    if (index == data.repositoryListState.length) {
                      return TextButton(
                        onPressed: () {
                          ref
                              .read(homeScreenNotifierProvider.notifier)
                              .addSearchItemCount();
                        },
                        child: const Text('さらに調べる'),
                      );
                    }
                    return InkWell(
                      child: RepositoryListCard(
                        repositoryListState: data.repositoryListState[index],
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<Scaffold>(
                            builder: (context) => RepositoryDetailScreen(
                              id: data.repositoryListState[index].id,
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              error: (error, stackTrace) {
                return ListView(
                  dragStartBehavior: DragStartBehavior.down,
                  children: [
                    Align(
                      child: SizedBox(
                        height: height * 70,
                        child: Column(
                          children: [
                            Gap(height * 17),
                            SizedBox(
                              height: width * 40,
                              child: Image.asset(
                                'assets/image/error_girl.png',
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)
                                      ?.labelErrorOccurred ??
                                  I10n().labelErrorOccurred,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            Gap(height * 2),
                            Text(
                              AppLocalizations.of(context)?.messageWaitMomen ??
                                  I10n().messageWaitMoment,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .apply(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
      ),
      onRefresh: () =>
          ref.refresh(FetchRepositoryListProvider('test', 20, '').future),
    );
  }
}
