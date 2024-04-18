import 'package:repository_get_app/graphql/query_serch_repo.graphql.dart';
import 'package:repository_get_app/model/fake_data/fake_repository_list_state.dart';

import 'package:repository_get_app/model/repository_list/repository_list_state.dart';
import 'package:repository_get_app/view_model/api/graphql_client/graphql_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign_list_repository.g.dart';

@riverpod
Future<List<RepositoryListState>> fetchRepositoryList(
  FetchRepositoryListRef ref,
  String query,
  int first,
) async {
  // Fakesクラスで作成したusersリストが返ってくる。

  final repository =
      await ref.watch(graphQLClientProvider).query$SearchRepoInfo(
            Options$Query$SearchRepoInfo(
              variables: Variables$Query$SearchRepoInfo(
                query: query,
                first: first,
              ),
            ),
          );

  print(repository.data.toString());

  return Future.value(
    FakesRepositoryList().repositoryList,
  );
}
