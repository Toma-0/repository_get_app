part of 'home_screen.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      child: ref.watch(fetchRepositoryListProvider).when(
            data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => RepositoryListCard(
                repositoryListState: data[index],
              ),
            ),
            error: (error, stackTrace) => const Text('エラーが発生しました'),
            loading: () => const CircularProgressIndicator(),
          ),
      onRefresh: () => ref.refresh(fetchRepositoryListProvider.future),
    );
  }
}
