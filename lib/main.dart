import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:repository_get_app/view/home/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: HomeScreen(),
    ),
  );
}
