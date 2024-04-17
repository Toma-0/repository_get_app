part of 'home_screen.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      child: ref.watch(fetchRepositoryListProvider).when(
            data: (data) {
              if (data.isEmpty) {
                return ListView(
                  children: [
                    InfoCard(
                      title: AppLocalizations.of(context)
                              ?.labelRepositoryNotFound ??
                          I10n().labelRepositoryNotFound,
                      message:
                          AppLocalizations.of(context)?.messageSearchingAgain ??
                              I10n().messageSearchingAgain,
                    ),
                  ],
                );
              }

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return RepositoryListCard(
                    repositoryListState: data[index],
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
      onRefresh: () => ref.refresh(fetchRepositoryListProvider.future),
    );
  }
}
