// ignore_for_file: avoid_dynamic_calls

import 'package:repository_get_app/graphql/query_serch_repo.graphql.dart';
import 'package:repository_get_app/model/repository_list/repository_list_state.dart';
import 'package:repository_get_app/model/repository_list_notifier/repository_list_notifier_state.dart';
import 'package:repository_get_app/view_model/api/graphql_client/graphql_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_list_notifier.g.dart';

@riverpod
Future<RepositoryListNotifierState> fetchRepositoryList(
  FetchRepositoryListRef ref,
  String query,
  int first,
  String? after,
) async {
  // Fakesクラスで作成したusersリストが返ってくる。
  try {
    final repository =
        await ref.watch(graphQLClientProvider).query$SearchRepoInfo(
              Options$Query$SearchRepoInfo(
                variables: Variables$Query$SearchRepoInfo(
                  query: query,
                  first: first,
                  after: after ?? '',
                ),
              ),
            );

    if (repository.exception != null) {
      throw Exception(repository.exception);
    }

    final repositoryListStateList = <RepositoryListState>[];
    late var cursor = '';

    repository.parsedData?.search.edges?.forEach((element) {
      final elementGraphql = element;
      if (elementGraphql != null) {
        final nodeGraphql = elementGraphql.node;
        if (nodeGraphql != null) {
          cursor = elementGraphql.cursor;
          final node = nodeGraphql.toJson();
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
        } else {
          throw Exception(repository.exception);
        }
      } else {
        throw Exception('Query_SearchRepoInfo_search_edges is null');
      }
    });

    return Future.value(
      RepositoryListNotifierState(
        cursor: cursor,
        repositoryListState: repositoryListStateList,
      ),
    );
  } on Exception catch (e) {
    return Future.error(e);
  }
}
