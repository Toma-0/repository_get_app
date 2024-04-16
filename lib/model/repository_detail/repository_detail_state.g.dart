// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryDetailStateImpl _$$RepositoryDetailStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryDetailStateImpl(
      id: json['id'] as int,
      repositoryName: json['repositoryName'] as String,
      ownerName: json['ownerName'] as String,
      ownerImageUri: json['ownerImageUri'] as String,
      starCount: json['starCount'] as int,
      watcherCount: json['watcherCount'] as int,
      forksCount: json['forksCount'] as int,
      language: json['language'] as String,
      description: json['description'] as String,
      repositoryUrl: json['repositoryUrl'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$RepositoryDetailStateImplToJson(
        _$RepositoryDetailStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repositoryName': instance.repositoryName,
      'ownerName': instance.ownerName,
      'ownerImageUri': instance.ownerImageUri,
      'starCount': instance.starCount,
      'watcherCount': instance.watcherCount,
      'forksCount': instance.forksCount,
      'language': instance.language,
      'description': instance.description,
      'repositoryUrl': instance.repositoryUrl,
      'updatedAt': instance.updatedAt,
    };
