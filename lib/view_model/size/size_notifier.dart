import 'package:flutter/material.dart';
import 'package:repository_get_app/model/size/size_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'size_notifier.g.dart';

@riverpod
class SizeNotifier extends _$SizeNotifier {
  @override
  SizeState build() {
    final pixelRatio =
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

    final mediaQueryData =
        WidgetsBinding.instance.platformDispatcher.views.first.physicalSize /
            pixelRatio;
    final screenWidth = mediaQueryData.width;
    final screenHeight = mediaQueryData.height;

    return SizeState(
      ratioSizeHight: screenHeight / 100,
      ratioSizeWidth: screenWidth / 100,
    );
  }
}
