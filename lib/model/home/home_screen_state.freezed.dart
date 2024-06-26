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
  bool get toggleShowSearchFieldWidgets => throw _privateConstructorUsedError;
  ThemeMode get colorThemeMode => throw _privateConstructorUsedError;
  String get serchWords => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;

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
  $Res call(
      {bool toggleShowSearchFieldWidgets,
      ThemeMode colorThemeMode,
      String serchWords,
      int itemCount});
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
    Object? toggleShowSearchFieldWidgets = null,
    Object? colorThemeMode = null,
    Object? serchWords = null,
    Object? itemCount = null,
  }) {
    return _then(_value.copyWith(
      toggleShowSearchFieldWidgets: null == toggleShowSearchFieldWidgets
          ? _value.toggleShowSearchFieldWidgets
          : toggleShowSearchFieldWidgets // ignore: cast_nullable_to_non_nullable
              as bool,
      colorThemeMode: null == colorThemeMode
          ? _value.colorThemeMode
          : colorThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      serchWords: null == serchWords
          ? _value.serchWords
          : serchWords // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {bool toggleShowSearchFieldWidgets,
      ThemeMode colorThemeMode,
      String serchWords,
      int itemCount});
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
    Object? toggleShowSearchFieldWidgets = null,
    Object? colorThemeMode = null,
    Object? serchWords = null,
    Object? itemCount = null,
  }) {
    return _then(_$CreateImpl(
      toggleShowSearchFieldWidgets: null == toggleShowSearchFieldWidgets
          ? _value.toggleShowSearchFieldWidgets
          : toggleShowSearchFieldWidgets // ignore: cast_nullable_to_non_nullable
              as bool,
      colorThemeMode: null == colorThemeMode
          ? _value.colorThemeMode
          : colorThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      serchWords: null == serchWords
          ? _value.serchWords
          : serchWords // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  _$CreateImpl(
      {this.toggleShowSearchFieldWidgets = false,
      this.colorThemeMode = ThemeMode.system,
      this.serchWords = '',
      this.itemCount = 10});

  @override
  @JsonKey()
  final bool toggleShowSearchFieldWidgets;
  @override
  @JsonKey()
  final ThemeMode colorThemeMode;
  @override
  @JsonKey()
  final String serchWords;
  @override
  @JsonKey()
  final int itemCount;

  @override
  String toString() {
    return 'HomeScreenState(toggleShowSearchFieldWidgets: $toggleShowSearchFieldWidgets, colorThemeMode: $colorThemeMode, serchWords: $serchWords, itemCount: $itemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.toggleShowSearchFieldWidgets,
                    toggleShowSearchFieldWidgets) ||
                other.toggleShowSearchFieldWidgets ==
                    toggleShowSearchFieldWidgets) &&
            (identical(other.colorThemeMode, colorThemeMode) ||
                other.colorThemeMode == colorThemeMode) &&
            (identical(other.serchWords, serchWords) ||
                other.serchWords == serchWords) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toggleShowSearchFieldWidgets,
      colorThemeMode, serchWords, itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);
}

abstract class _Create implements HomeScreenState {
  factory _Create(
      {final bool toggleShowSearchFieldWidgets,
      final ThemeMode colorThemeMode,
      final String serchWords,
      final int itemCount}) = _$CreateImpl;

  @override
  bool get toggleShowSearchFieldWidgets;
  @override
  ThemeMode get colorThemeMode;
  @override
  String get serchWords;
  @override
  int get itemCount;
  @override
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
