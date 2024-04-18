// ignore_for_file: avoid_dynamic_calls

import 'package:repository_get_app/graphql/query_serch_repo.graphql.dart';
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

  final repositoryListStateList = <RepositoryListState>[];
  repository.parsedData?.search.edges?.forEach((element) {
    final node = element!.node!.toJson();
    repositoryListStateList.add(
      RepositoryListState(
        id: node['id'].toString(),
        repositoryName: node['name'].toString(),
        starCount: node['stargazerCount'].toString(),
        updatedAt: node['updatedAt'].toString(),
        description: node['description'].toString(),
        ownerName: node['owner']['login'].toString(),
        ownerImageUri: node['owner']['avatarUrl'].toString(),
      ),
    );
  });
  return Future.value(repositoryListStateList);
}
