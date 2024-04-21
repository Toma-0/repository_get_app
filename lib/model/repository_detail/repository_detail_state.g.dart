// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryDetailStateImpl _$$RepositoryDetailStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryDetailStateImpl(
      repositoryName: json['repositoryName'] as String,
      ownerName: json['ownerName'] as String,
      ownerImageUri: json['ownerImageUri'] as String,
      starsCount: json['starsCount'] as String,
      watchersCount: json['watchersCount'] as String,
      forksCount: json['forksCount'] as String,
      issuesCount: json['issuesCount'] as String,
      language: json['language'] as String,
      description: json['description'] as String,
      repositoryUrl: json['repositoryUrl'] as String,
      updatedAt: json['updatedAt'] as String,
      issueState: (json['issueState'] as List<dynamic>)
          .map((e) => IssueState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepositoryDetailStateImplToJson(
        _$RepositoryDetailStateImpl instance) =>
    <String, dynamic>{
      'repositoryName': instance.repositoryName,
      'ownerName': instance.ownerName,
      'ownerImageUri': instance.ownerImageUri,
      'starsCount': instance.starsCount,
      'watchersCount': instance.watchersCount,
      'forksCount': instance.forksCount,
      'issuesCount': instance.issuesCount,
      'language': instance.language,
      'description': instance.description,
      'repositoryUrl': instance.repositoryUrl,
      'updatedAt': instance.updatedAt,
      'issueState': instance.issueState,
    };
