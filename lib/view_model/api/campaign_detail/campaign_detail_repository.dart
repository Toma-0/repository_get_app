import 'package:repository_get_app/model/fake_data/fake_repository_detail_state.dart';
import 'package:repository_get_app/model/repository_detail/repository_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign_detail_repository.g.dart';

@riverpod
Future<List<RepositoryDetailState>> fetchRepositoryDetail(
  FetchRepositoryDetailRef ref,
) async {
  // Fakesクラスで作成したusersリストが返ってくる。
  return Future.value(
    [FakesRepositoryDetail().repositoryDetail],
  );
}
