import 'package:flutter/material.dart';
import 'package:repository_get_app/model/size/size_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'size_notifier.g.dart';

@riverpod
class SizeNotifier extends _$SizeNotifier {
  @override
  // TODO(Toma-0): contextを引数に取らなくてもよい方法を考える
  // ignore: avoid_build_context_in_providers
  SizeState build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    return SizeState(
      ratioSizeHight: screenHeight / 100,
      ratioSizeWidth: screenWidth / 100,
    );
  }
}
