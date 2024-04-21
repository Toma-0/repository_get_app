import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repository_get_app/model/repository_detail/issue_state.dart';

part 'repository_detail_state.freezed.dart';
part 'repository_detail_state.g.dart';

@freezed
class RepositoryDetailState with _$RepositoryDetailState {
  const factory RepositoryDetailState({
    required String repositoryName,
    required String ownerName,
    required String ownerImageUri,
    required String starsCount,
    required String watchersCount,
    required String forksCount,
    required String issuesCount,
    required String language,
    required String description,
    required String repositoryUrl,
    required String updatedAt,
    required List<IssueState> issueState,
  }) = _RepositoryDetailState;

  factory RepositoryDetailState.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDetailStateFromJson(json);
}
