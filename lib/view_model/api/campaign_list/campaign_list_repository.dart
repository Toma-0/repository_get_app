import 'package:repository_get_app/model/fake_data/fake_repository_list_state.dart';

import 'package:repository_get_app/model/repository_list/repository_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign_list_repository.g.dart';

@riverpod
Future<List<RepositoryListState>> fetchRepositoryList(
  FetchRepositoryListRef ref,
) async {
  // Fakesクラスで作成したusersリストが返ってくる。
  return Future.value(
    FakesRepositoryList().repositoryList,
  );
}
