import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_state.freezed.dart';
part 'issue_state.g.dart';

@freezed
class IssueState with _$IssueState {
  const factory IssueState({
    required String title,
    required String body,
  }) = _IssueState;

  factory IssueState.fromJson(Map<String, dynamic> json) =>
      _$IssueStateFromJson(json);
}
