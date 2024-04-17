import 'package:freezed_annotation/freezed_annotation.dart';

part 'size_state.freezed.dart';

@freezed
class SizeState with _$SizeState {
  factory SizeState({
    @Default(0) double ratioSizeHight,
    @Default(0) double ratioSizeWidth,
  }) = _Create;
}
