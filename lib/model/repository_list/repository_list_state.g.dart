// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryListStateImpl _$$RepositoryListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryListStateImpl(
      id: json['id'] as int,
      repositoryName: json['repositoryName'] as String,
      ownerName: json['ownerName'] as String,
      ownerImageUri: json['ownerImageUri'] as String,
      starCount: json['starCount'] as int,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$RepositoryListStateImplToJson(
        _$RepositoryListStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repositoryName': instance.repositoryName,
      'ownerName': instance.ownerName,
      'ownerImageUri': instance.ownerImageUri,
      'starCount': instance.starCount,
      'updatedAt': instance.updatedAt,
    };