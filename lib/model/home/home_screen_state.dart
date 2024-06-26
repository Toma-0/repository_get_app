import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  factory HomeScreenState({
    @Default(false) bool toggleShowSearchFieldWidgets,
    @Default(ThemeMode.system) ThemeMode colorThemeMode,
    @Default('') String serchWords,
    @Default(10) int itemCount,
  }) = _Create;
}
