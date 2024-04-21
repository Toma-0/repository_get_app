part of 'home_screen.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ref.watch(sizeNotifierProvider).ratioSizeWidth * 2,
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
                        ShowContextWithImage(
                          imageAssetsUri: 'assets/image/start_search_girl.png',
                          title:
                              AppLocalizations.of(context)?.labelStartSearch ??
                                  I10n().labelStartSearch,
                          message: AppLocalizations.of(context)
                                  ?.messageStartSearch ??
                              I10n().messageStartSearch,
                        ),
                      ],
                    );
                  }
                  return ListView(
                    dragStartBehavior: DragStartBehavior.down,
                    children: [
                      ShowContextWithImage(
                        imageAssetsUri: 'assets/image/not_found_girl.png',
                        title: AppLocalizations.of(context)
                                ?.labelRepositoryNotFound ??
                            I10n().labelRepositoryNotFound,
                        message: AppLocalizations.of(context)
                                ?.messageSearchingAgain ??
                            I10n().messageSearchingAgain,
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
                        child: Text(
                          AppLocalizations.of(context)?.labelMoreSearch ??
                              I10n().labelMoreSearch,
                        ),
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
                    ShowContextWithImage(
                      imageAssetsUri: 'assets/image/error_girl.png',
                      title: AppLocalizations.of(context)?.labelErrorOccurred ??
                          I10n().labelErrorOccurred,
                      message: AppLocalizations.of(context)?.messageWaitMomen ??
                          I10n().messageWaitMoment,
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
