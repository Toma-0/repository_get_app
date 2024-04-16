import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail_state.freezed.dart';
part 'repository_detail_state.g.dart';

@freezed
class RepositoryDetailState with _$RepositoryDetailState {
  const factory RepositoryDetailState({
    required int id,
    required String repositoryName,
    required String ownerName,
    required String ownerImageUri,
    required int starCount,
    required int watcherCount,
    required int forksCount,
    required String language,
    required String description,
    required String repositoryUrl,
    required String upDateAt,
  }) = _RepositoryDetailState;

  factory RepositoryDetailState.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDetailStateFromJson(json);
}
