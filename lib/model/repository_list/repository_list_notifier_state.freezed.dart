// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_list_notifier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepositoryListNotifierState {
  List<RepositoryListState> get repositoryListState =>
      throw _privateConstructorUsedError;
  String get cursor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryListNotifierStateCopyWith<RepositoryListNotifierState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryListNotifierStateCopyWith<$Res> {
  factory $RepositoryListNotifierStateCopyWith(
          RepositoryListNotifierState value,
          $Res Function(RepositoryListNotifierState) then) =
      _$RepositoryListNotifierStateCopyWithImpl<$Res,
          RepositoryListNotifierState>;
  @useResult
  $Res call({List<RepositoryListState> repositoryListState, String cursor});
}

/// @nodoc
class _$RepositoryListNotifierStateCopyWithImpl<$Res,
        $Val extends RepositoryListNotifierState>
    implements $RepositoryListNotifierStateCopyWith<$Res> {
  _$RepositoryListNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryListState = null,
    Object? cursor = null,
  }) {
    return _then(_value.copyWith(
      repositoryListState: null == repositoryListState
          ? _value.repositoryListState
          : repositoryListState // ignore: cast_nullable_to_non_nullable
              as List<RepositoryListState>,
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryListNotifierStateImplCopyWith<$Res>
    implements $RepositoryListNotifierStateCopyWith<$Res> {
  factory _$$RepositoryListNotifierStateImplCopyWith(
          _$RepositoryListNotifierStateImpl value,
          $Res Function(_$RepositoryListNotifierStateImpl) then) =
      __$$RepositoryListNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RepositoryListState> repositoryListState, String cursor});
}

/// @nodoc
class __$$RepositoryListNotifierStateImplCopyWithImpl<$Res>
    extends _$RepositoryListNotifierStateCopyWithImpl<$Res,
        _$RepositoryListNotifierStateImpl>
    implements _$$RepositoryListNotifierStateImplCopyWith<$Res> {
  __$$RepositoryListNotifierStateImplCopyWithImpl(
      _$RepositoryListNotifierStateImpl _value,
      $Res Function(_$RepositoryListNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryListState = null,
    Object? cursor = null,
  }) {
    return _then(_$RepositoryListNotifierStateImpl(
      repositoryListState: null == repositoryListState
          ? _value._repositoryListState
          : repositoryListState // ignore: cast_nullable_to_non_nullable
              as List<RepositoryListState>,
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepositoryListNotifierStateImpl
    implements _RepositoryListNotifierState {
  const _$RepositoryListNotifierStateImpl(
      {final List<RepositoryListState> repositoryListState = const [],
      this.cursor = ''})
      : _repositoryListState = repositoryListState;

  final List<RepositoryListState> _repositoryListState;
  @override
  @JsonKey()
  List<RepositoryListState> get repositoryListState {
    if (_repositoryListState is EqualUnmodifiableListView)
      return _repositoryListState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositoryListState);
  }

  @override
  @JsonKey()
  final String cursor;

  @override
  String toString() {
    return 'RepositoryListNotifierState(repositoryListState: $repositoryListState, cursor: $cursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryListNotifierStateImpl &&
            const DeepCollectionEquality()
                .equals(other._repositoryListState, _repositoryListState) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_repositoryListState), cursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryListNotifierStateImplCopyWith<_$RepositoryListNotifierStateImpl>
      get copyWith => __$$RepositoryListNotifierStateImplCopyWithImpl<
          _$RepositoryListNotifierStateImpl>(this, _$identity);
}

abstract class _RepositoryListNotifierState
    implements RepositoryListNotifierState {
  const factory _RepositoryListNotifierState(
      {final List<RepositoryListState> repositoryListState,
      final String cursor}) = _$RepositoryListNotifierStateImpl;

  @override
  List<RepositoryListState> get repositoryListState;
  @override
  String get cursor;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryListNotifierStateImplCopyWith<_$RepositoryListNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
