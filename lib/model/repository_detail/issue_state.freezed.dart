// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IssueState _$IssueStateFromJson(Map<String, dynamic> json) {
  return _IssueState.fromJson(json);
}

/// @nodoc
mixin _$IssueState {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueStateCopyWith<IssueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueStateCopyWith<$Res> {
  factory $IssueStateCopyWith(
          IssueState value, $Res Function(IssueState) then) =
      _$IssueStateCopyWithImpl<$Res, IssueState>;
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class _$IssueStateCopyWithImpl<$Res, $Val extends IssueState>
    implements $IssueStateCopyWith<$Res> {
  _$IssueStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssueStateImplCopyWith<$Res>
    implements $IssueStateCopyWith<$Res> {
  factory _$$IssueStateImplCopyWith(
          _$IssueStateImpl value, $Res Function(_$IssueStateImpl) then) =
      __$$IssueStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class __$$IssueStateImplCopyWithImpl<$Res>
    extends _$IssueStateCopyWithImpl<$Res, _$IssueStateImpl>
    implements _$$IssueStateImplCopyWith<$Res> {
  __$$IssueStateImplCopyWithImpl(
      _$IssueStateImpl _value, $Res Function(_$IssueStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$IssueStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssueStateImpl implements _IssueState {
  const _$IssueStateImpl({required this.title, required this.body});

  factory _$IssueStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssueStateImplFromJson(json);

  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'IssueState(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueStateImplCopyWith<_$IssueStateImpl> get copyWith =>
      __$$IssueStateImplCopyWithImpl<_$IssueStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssueStateImplToJson(
      this,
    );
  }
}

abstract class _IssueState implements IssueState {
  const factory _IssueState(
      {required final String title,
      required final String body}) = _$IssueStateImpl;

  factory _IssueState.fromJson(Map<String, dynamic> json) =
      _$IssueStateImpl.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$IssueStateImplCopyWith<_$IssueStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
