import 'package:repository_get_app/model/home/home_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen_notifier.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  HomeScreenState build() => HomeScreenState();

  void changeSearchRelated() => state.copyWith(
        toggleSearchRelatedWidgets: !state.toggleSearchRelatedWidgets,
      );
}
