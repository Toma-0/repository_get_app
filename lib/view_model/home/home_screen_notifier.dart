import 'package:repository_get_app/model/home/home_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen_notifier.g.dart';

@riverpod
class HomeScreenNotifier extends _$HomeScreenNotifier {
  @override
  HomeScreenState build() => HomeScreenState();

  //検索バーを表示するかどうかの切り替えを行うフラグの状態変化
  void changeSearchRelated() => state = state.copyWith(
        toggleShowSearchFieldWidgets: !state.toggleShowSearchFieldWidgets,
      );
}
