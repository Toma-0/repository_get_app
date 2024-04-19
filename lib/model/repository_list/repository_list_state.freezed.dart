// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoryListState _$RepositoryListStateFromJson(Map<String, dynamic> json) {
  return _RepositoryListState.fromJson(json);
}

/// @nodoc
mixin _$RepositoryListState {
  String get id => throw _privateConstructorUsedError;
  String get repositoryName => throw _privateConstructorUsedError;
  String get ownerName => throw _privateConstructorUsedError;
  String get ownerImageUri => throw _privateConstructorUsedError;
  String get starsCount => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryListStateCopyWith<RepositoryListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryListStateCopyWith<$Res> {
  factory $RepositoryListStateCopyWith(
          RepositoryListState value, $Res Function(RepositoryListState) then) =
      _$RepositoryListStateCopyWithImpl<$Res, RepositoryListState>;
  @useResult
  $Res call(
      {String id,
      String repositoryName,
      String ownerName,
      String ownerImageUri,
      String starsCount,
      String updatedAt,
      String description});
}

/// @nodoc
class _$RepositoryListStateCopyWithImpl<$Res, $Val extends RepositoryListState>
    implements $RepositoryListStateCopyWith<$Res> {
  _$RepositoryListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? repositoryName = null,
    Object? ownerName = null,
    Object? ownerImageUri = null,
    Object? starsCount = null,
    Object? updatedAt = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerImageUri: null == ownerImageUri
          ? _value.ownerImageUri
          : ownerImageUri // ignore: cast_nullable_to_non_nullable
              as String,
      starsCount: null == starsCount
          ? _value.starsCount
          : starsCount // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryListStateImplCopyWith<$Res>
    implements $RepositoryListStateCopyWith<$Res> {
  factory _$$RepositoryListStateImplCopyWith(_$RepositoryListStateImpl value,
          $Res Function(_$RepositoryListStateImpl) then) =
      __$$RepositoryListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String repositoryName,
      String ownerName,
      String ownerImageUri,
      String starsCount,
      String updatedAt,
      String description});
}

/// @nodoc
class __$$RepositoryListStateImplCopyWithImpl<$Res>
    extends _$RepositoryListStateCopyWithImpl<$Res, _$RepositoryListStateImpl>
    implements _$$RepositoryListStateImplCopyWith<$Res> {
  __$$RepositoryListStateImplCopyWithImpl(_$RepositoryListStateImpl _value,
      $Res Function(_$RepositoryListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? repositoryName = null,
    Object? ownerName = null,
    Object? ownerImageUri = null,
    Object? starsCount = null,
    Object? updatedAt = null,
    Object? description = null,
  }) {
    return _then(_$RepositoryListStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerImageUri: null == ownerImageUri
          ? _value.ownerImageUri
          : ownerImageUri // ignore: cast_nullable_to_non_nullable
              as String,
      starsCount: null == starsCount
          ? _value.starsCount
          : starsCount // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryListStateImpl implements _RepositoryListState {
  const _$RepositoryListStateImpl(
      {required this.id,
      required this.repositoryName,
      required this.ownerName,
      required this.ownerImageUri,
      required this.starsCount,
      required this.updatedAt,
      required this.description});

  factory _$RepositoryListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryListStateImplFromJson(json);

  @override
  final String id;
  @override
  final String repositoryName;
  @override
  final String ownerName;
  @override
  final String ownerImageUri;
  @override
  final String starsCount;
  @override
  final String updatedAt;
  @override
  final String description;

  @override
  String toString() {
    return 'RepositoryListState(id: $id, repositoryName: $repositoryName, ownerName: $ownerName, ownerImageUri: $ownerImageUri, starsCount: $starsCount, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryListStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerImageUri, ownerImageUri) ||
                other.ownerImageUri == ownerImageUri) &&
            (identical(other.starsCount, starsCount) ||
                other.starsCount == starsCount) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, repositoryName, ownerName,
      ownerImageUri, starsCount, updatedAt, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryListStateImplCopyWith<_$RepositoryListStateImpl> get copyWith =>
      __$$RepositoryListStateImplCopyWithImpl<_$RepositoryListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryListStateImplToJson(
      this,
    );
  }
}

abstract class _RepositoryListState implements RepositoryListState {
  const factory _RepositoryListState(
      {required final String id,
      required final String repositoryName,
      required final String ownerName,
      required final String ownerImageUri,
      required final String starsCount,
      required final String updatedAt,
      required final String description}) = _$RepositoryListStateImpl;

  factory _RepositoryListState.fromJson(Map<String, dynamic> json) =
      _$RepositoryListStateImpl.fromJson;

  @override
  String get id;
  @override
  String get repositoryName;
  @override
  String get ownerName;
  @override
  String get ownerImageUri;
  @override
  String get starsCount;
  @override
  String get updatedAt;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryListStateImplCopyWith<_$RepositoryListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
