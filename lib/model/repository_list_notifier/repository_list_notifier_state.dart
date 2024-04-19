import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repository_get_app/model/repository_list/repository_list_state.dart';

part 'repository_list_notifier_state.freezed.dart';

@freezed
class RepositoryListNotifierState with _$RepositoryListNotifierState {
  const factory RepositoryListNotifierState({
    @Default([]) List<RepositoryListState> repositoryListState,
    @Default('') String cursor,
  }) = _RepositoryListNotifierState;
}
