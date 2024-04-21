import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'screen_transition_animation.g.dart';

@riverpod
FadeTransition pushPageTransitionAnimation(
  PushPageTransitionAnimationRef ref,
  Animation<double> animation,
  Widget child,
) {
  const startPoint = Offset(1, 0);
  const endPoint = Offset.zero;
  final moveScreen = Tween<Offset>(
    begin: startPoint,
    end: endPoint,
  );
  final offsetAnimation = animation.drive(moveScreen);

  const begin = 0.0;
  const end = 1.0;
  final tween = Tween(
    begin: begin,
    end: end,
  ).chain(CurveTween(curve: Curves.easeInOut));
  final doubleAnimation = animation.drive(tween);

  return FadeTransition(
    opacity: doubleAnimation,
    child: SlideTransition(
      position: offsetAnimation,
      child: child,
    ),
  );
}
