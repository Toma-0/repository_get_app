import 'package:repository_get_app/model/repository_detail/repository_detail_state.dart';

class FakesRepositoryList {
  final RepositoryDetailState repositoryDetail = const RepositoryDetailState(
    id: 1,
    repositoryName: 'Example Repository',
    ownerName: 'Example Owner',
    ownerImageUri: 'https://example.com/example_image.png',
    starCount: 100,
    watcherCount: 50,
    forksCount: 30,
    language: 'Dart',
    description: 'This is an example repository.',
    repositoryUrl: 'https://github.com/example/example-repo',
    updatedAt: '2024-04-16T10:00:00Z',
  );
}