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
          horizontal:
              ref.watch(SizeNotifierProvider(context)).ratioSizeWidth * 2,
        ),
        child: ref
            .watch(
              FetchRepositoryListProvider(
                ref.watch(homeScreenNotifierProvider).serchWords,
                20,
              ),
            )
            .when(
              data: (data) {
                if (data.isEmpty) {
                  return ListView(
                    children: [
                      InfoCard(
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

                return ListView.builder(
                  itemCount: data.length + 1,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: RepositoryListCard(
                        repositoryListState: data[index],
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<Scaffold>(
                            builder: (context) =>
                                RepositoryDetailScreen(id: data[index].id),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              error: (error, stackTrace) => WarningCard(
                title: AppLocalizations.of(context)?.labelErrorOccurred ??
                    I10n().labelErrorOccurred,
                message: AppLocalizations.of(context)?.messageWaitMomen ??
                    I10n().messageWaitMoment,
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
      ),
      onRefresh: () =>
          ref.refresh(FetchRepositoryListProvider('test', 5).future),
    );
  }
}
