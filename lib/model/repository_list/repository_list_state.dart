import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_list_state.freezed.dart';
part 'repository_list_state.g.dart';

@freezed
class RepositoryListState with _$RepositoryListState {
  const factory RepositoryListState({
    required String id,
    required String repositoryName,
    required String ownerName,
    required String ownerImageUri,
    required String starCount,
    required String updatedAt,
    required String description,
  }) = _RepositoryListState;

  factory RepositoryListState.fromJson(Map<String, dynamic> json) =>
      _$RepositoryListStateFromJson(json);
}
