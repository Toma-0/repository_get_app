import 'package:repository_get_app/model/repository_detail/repository_detail_state.dart';

class FakesRepositoryDetail {
  final RepositoryDetailState repositoryDetail = const RepositoryDetailState(
    repositoryName: 'Example Repository',
    ownerName: 'Example Owner',
    ownerImageUri: 'https://fromtheasia.com/wp-content/uploads/NCG168.jpg',
    starsCount: '100',
    watchersCount: '50',
    forksCount: '30',
    issuesCount: '40',
    language: 'Dart',
    description: 'This is an example repository.',
    repositoryUrl: 'https://github.com/example/example-repo',
    updatedAt: '2024-04-16T10:00:00Z',
  );
}
