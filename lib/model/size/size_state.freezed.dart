// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SizeState {
  double get ratioSizeHight => throw _privateConstructorUsedError;
  double get ratioSizeWidth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SizeStateCopyWith<SizeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeStateCopyWith<$Res> {
  factory $SizeStateCopyWith(SizeState value, $Res Function(SizeState) then) =
      _$SizeStateCopyWithImpl<$Res, SizeState>;
  @useResult
  $Res call({double ratioSizeHight, double ratioSizeWidth});
}

/// @nodoc
class _$SizeStateCopyWithImpl<$Res, $Val extends SizeState>
    implements $SizeStateCopyWith<$Res> {
  _$SizeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratioSizeHight = null,
    Object? ratioSizeWidth = null,
  }) {
    return _then(_value.copyWith(
      ratioSizeHight: null == ratioSizeHight
          ? _value.ratioSizeHight
          : ratioSizeHight // ignore: cast_nullable_to_non_nullable
              as double,
      ratioSizeWidth: null == ratioSizeWidth
          ? _value.ratioSizeWidth
          : ratioSizeWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> implements $SizeStateCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double ratioSizeHight, double ratioSizeWidth});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$SizeStateCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratioSizeHight = null,
    Object? ratioSizeWidth = null,
  }) {
    return _then(_$CreateImpl(
      ratioSizeHight: null == ratioSizeHight
          ? _value.ratioSizeHight
          : ratioSizeHight // ignore: cast_nullable_to_non_nullable
              as double,
      ratioSizeWidth: null == ratioSizeWidth
          ? _value.ratioSizeWidth
          : ratioSizeWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  _$CreateImpl({this.ratioSizeHight = 0, this.ratioSizeWidth = 0});

  @override
  @JsonKey()
  final double ratioSizeHight;
  @override
  @JsonKey()
  final double ratioSizeWidth;

  @override
  String toString() {
    return 'SizeState(ratioSizeHight: $ratioSizeHight, ratioSizeWidth: $ratioSizeWidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.ratioSizeHight, ratioSizeHight) ||
                other.ratioSizeHight == ratioSizeHight) &&
            (identical(other.ratioSizeWidth, ratioSizeWidth) ||
                other.ratioSizeWidth == ratioSizeWidth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ratioSizeHight, ratioSizeWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);
}

abstract class _Create implements SizeState {
  factory _Create({final double ratioSizeHight, final double ratioSizeWidth}) =
      _$CreateImpl;

  @override
  double get ratioSizeHight;
  @override
  double get ratioSizeWidth;
  @override
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
