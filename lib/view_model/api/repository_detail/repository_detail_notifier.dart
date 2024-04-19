// ignore_for_file: avoid_dynamic_calls

import 'package:repository_get_app/graphql/query_detail_repo.graphql.graphql.dart';
import 'package:repository_get_app/model/repository_detail/repository_detail_state.dart';
import 'package:repository_get_app/view_model/api/graphql_client/graphql_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_detail_notifier.g.dart';

// TODO(Toma-0): この形で引数を持たせるのはあまり良くなかった気がしている。
@riverpod
Future<RepositoryDetailState> fetchRepositoryDetail(
  FetchRepositoryDetailRef ref,
  String id,
) async {
  try {
    final repository =
        await ref.watch(graphQLClientProvider).query$GetDetailRepository(
              Options$Query$GetDetailRepository(
                variables: Variables$Query$GetDetailRepository(id: id),
              ),
            );

    final dataGraphql = repository.parsedData;
    if (dataGraphql != null) {
      final nodeGraphql = dataGraphql.node;
      if (nodeGraphql != null) {
        final node = nodeGraphql.toJson();

        // Fakesクラスで作成したusersリストが返ってくる。
        return Future.value(
          RepositoryDetailState(
            repositoryName: node['name'].toString(),
            starsCount: node['stargazerCount'].toString(),
            updatedAt: node['updatedAt'].toString(),
            description: node['description'].toString(),
            ownerName: node['owner']['login'].toString(),
            ownerImageUri: node['owner']['avatarUrl'].toString(),
            watchersCount: node['watchers']['totalCount'].toString(),
            forksCount: node['forksCount'].toString(),
            issuesCount: node['issues']['totalCount'].toString(),
            language: node['languages']['nodes'].first['name'].toString(),
            repositoryUrl: node['url'].toString(),
          ),
        );
      } else {
        throw Exception('Query_GetDetailRepository_node is null');
      }
    } else {
      throw Exception('Query_GetDetailRepository is null');
    }
  } on Exception catch (e) {
    return Future.error(e);
  }
}
