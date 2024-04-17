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
                  children: const [
                    InfoCard(
                      title: 'リポジトリが見つかりませんでした。',
                      message:
                          '以下の方法で再度検索を行ってください\n\n1.検索ワードを変更する\n2.スペルミスがないか確認してください',
                    )
                  ],
                );
              }

              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return RepositoryListCard(
                      repositoryListState: data[index],
                    );
                  });
            },
            error: (error, stackTrace) => const WarningCard(
              title: 'エラーが発生しました。',
              message: '時間をおいてから、再度検索を行ってください。',
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      onRefresh: () => ref.refresh(fetchRepositoryListProvider.future),
    );
  }
}
