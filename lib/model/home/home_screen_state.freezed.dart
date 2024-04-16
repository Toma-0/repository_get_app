// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenState {
  bool get toggleSearchRelatedWidgets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({bool toggleSearchRelatedWidgets});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggleSearchRelatedWidgets = null,
  }) {
    return _then(_value.copyWith(
      toggleSearchRelatedWidgets: null == toggleSearchRelatedWidgets
          ? _value.toggleSearchRelatedWidgets
          : toggleSearchRelatedWidgets // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool toggleSearchRelatedWidgets});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggleSearchRelatedWidgets = null,
  }) {
    return _then(_$CreateImpl(
      toggleSearchRelatedWidgets: null == toggleSearchRelatedWidgets
          ? _value.toggleSearchRelatedWidgets
          : toggleSearchRelatedWidgets // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  _$CreateImpl({this.toggleSearchRelatedWidgets = false});

  @override
  @JsonKey()
  final bool toggleSearchRelatedWidgets;

  @override
  String toString() {
    return 'HomeScreenState(toggleSearchRelatedWidgets: $toggleSearchRelatedWidgets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.toggleSearchRelatedWidgets,
                    toggleSearchRelatedWidgets) ||
                other.toggleSearchRelatedWidgets ==
                    toggleSearchRelatedWidgets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toggleSearchRelatedWidgets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);
}

abstract class _Create implements HomeScreenState {
  factory _Create({final bool toggleSearchRelatedWidgets}) = _$CreateImpl;

  @override
  bool get toggleSearchRelatedWidgets;
  @override
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
