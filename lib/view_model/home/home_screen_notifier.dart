import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:repository_get_app/model/home/home_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen_notifier.g.dart';

@riverpod
class HomeScreenNotifier extends _$HomeScreenNotifier {
  @override
  HomeScreenState build() => HomeScreenState();

  void changeSerchWord(String serchWord) =>
      state = state.copyWith(serchWords: serchWord);
  //検索バーを表示するかどうかの切り替えを行うフラグの状態変化
  void changeSearchRelated() => state = state.copyWith(
        toggleShowSearchFieldWidgets: !state.toggleShowSearchFieldWidgets,
      );

  void changeColorThemeDark() =>
      state = state.copyWith(colorThemeMode: ThemeMode.dark);

  void changeColorThemeLight() =>
      state = state.copyWith(colorThemeMode: ThemeMode.light);

  void changeColorThemeSystem() =>
      state = state.copyWith(colorThemeMode: ThemeMode.system);

  void addSearchItemCount() =>
      state = state.copyWith(itemCount: state.itemCount + 10);

  void initStateSearchList() => state = state.copyWith(itemCount: 10);

  String formatDate(String updatedAt) {
    final inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ssZ');
    final outputFormat = DateFormat('yyyy/MM/dd');
    return outputFormat.format(
      inputFormat.parse(updatedAt),
    );
  }
}
